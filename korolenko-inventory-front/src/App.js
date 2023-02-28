import './App.css';
import "../node_modules/bootstrap/dist/css/bootstrap.min.css";
import Navbar from './layout/Navbar';
import MovableProperty from './tables/MovableProperty/MovableProperty';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import MashinAndEquipment from './tables/MashinAndEquipment/MashinAndEquipment';
import AddMashAndEqui from './tables/MashinAndEquipment/AddMashAndEqui';
import Home from './pages/Home';
import AddMovProperty from './tables/MovableProperty/AddMovProperty';
import EditMovProperty from './tables/MovableProperty/EditMovProperty';
import EditMashAndEqui from './tables/MashinAndEquipment/EditMashAndEqui';

function App() {
  return (
    <div className="App">

      <Router>
        <Navbar />

        <Routes>
          <Route exact path="/" element={<Home />} />
          <Route exact path="/showAllMashAndEqui" element={<MashinAndEquipment />} />
          <Route exact path="/showAllMovProperty" element={<MovableProperty />} />
          <Route exact path="/addMashAndEqui" element={<AddMashAndEqui />} />
          <Route exact path="/addMovProperty" element={<AddMovProperty />} />
          <Route exact path="/editMovProperty/:id" element={<EditMovProperty />} />
          <Route exact path="/editMashAndEqui/:id" element={<EditMashAndEqui />} />



        </Routes>


      </Router>

    </div>
  );
}

export default App;
