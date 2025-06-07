import React, { useEffect } from 'react';

const MapComponent = () => {
  useEffect(() => {
    const script = document.createElement('script');
    script.src = 'https://api-maps.yandex.ru/2.1/?lang=en_US';
    script.onload = () => {
      window.ymaps.ready(() => {
        const map = new window.ymaps.Map('map', {
          center: [41.0082, 28.9784], // Istanbul
          zoom: 10,
        });

        map.geoObjects.add(new window.ymaps.Placemark([41.015137, 28.979530], {
          balloonContent: 'Truck #1' 
        }));
      });
    };
    document.body.appendChild(script);
  }, []);

  return <div id="map" style={{ width: '100%', height: '500px', marginTop: '20px' }}></div>;
};

export default MapComponent;