import UIKit
import Lottie

class CategoriesViewController: UIViewController {
    
    @IBOutlet weak var categoriesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup(categoriesTableView)
    }
    
    func setup(_ tableView: UITableView){
        
        // Protocolo delegado de las tablas que nos servirá para indicar que elementos tendrá la misma
        tableView.dataSource = self // Sobre nosostros mismos
        tableView.delegate = self
        // Opciones de propiedades
        tableView.showsVerticalScrollIndicator = false // Desactiva la scrool bar de la derecha
        // Registramos la celdas
        //categoriesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(UINib(nibName: "CategoryTableViewCell", bundle: nil) , forCellReuseIdentifier: "custom cell")
        
        // Posicionar los corner radius
        tableView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        // Configurar bordes borrosos
    }
    
    
    
}

// Buena práctica = Crear los protocolos delegados sobre extensiones
// Protocolo Delegado UITableViewDataSource
extension CategoriesViewController : UITableViewDataSource{

    // Nos indica cuantas celdas queremos que tenga nuestra tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Category.allCases.count
        
    }
    
    // Funcion para manejar la cell custom y la cell normal en caso de que hubiese
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        guard let cell: CategoryTableViewCell = tableView.dequeueReusableCell(withIdentifier: "custom cell", for: indexPath) as? CategoryTableViewCell else { return UITableViewCell()}
    
        let category = Category.allCases[indexPath.row]
        cell.categoryLabel.text = category.rawValue
        cell.categoryImage.image = UIImage(named: category.rawValue)
        cell.separatorInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        return cell
    }
    
}

extension CategoriesViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}

