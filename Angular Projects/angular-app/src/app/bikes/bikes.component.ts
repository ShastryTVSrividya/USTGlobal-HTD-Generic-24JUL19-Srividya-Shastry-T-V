import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-bikes',
  templateUrl: './bikes.component.html',
  styleUrls: ['./bikes.component.css']
})
export class BikesComponent implements OnInit {

  bikeData:any=''; //no conflicts due to any

  bikes=[
    {
      brand:'Hero XPulse 200',
      img:'https://bd.gaadicdn.com/processedimages/hero/xpulse-200/source/xpulse-200-carb_red_1_1556795624.jpg',
      description:'Hero XPulse 200’s deliveries have commenced across major cities in India. The bike is available without any waiting period in Delhi and Mumbai. But Bengaluru and Pune customers will need to wait for 15 days and 45 days, respectively. The Hero XPulse 200 is yet to arrive at Hero’s dealerships in Kolkata and Chennai.'
    },
    {
      brand:'Suzuki Access 125',
      img:'https://bd.gaadicdn.com/processedimages/suzuki/suzuki-access-125/source/m_access-125_31540279835.jpg',
      description:'The 2019 Suzuki Access 125 Special Edition gets a new Metallic Matte Bordeaux while retaining the same price tag of Rs 61,788 (ex-showroom, Delhi). It also features a retro-styled beige-coloured seat to go along with the new paint job. Other than this, the scooter remains unchanged. The Access 125 gets an appealing design paired with a bunch of new features. For instance, it comes with chrome finished highlights, aerodynamic body contours, chrome-finished multi-reflector headlamps, and a 3D logo. It gets an analogue instrument console and digital display with essential readouts. Powering the scooter is the SEP (Suzuki Eco Performance) 124cc, single-cylinder, air-cooled engine that is capable of delivering a maximum power of 8.7PS at 7000rpm and a peak torque of 10.2Nm at 5000rpm. With the inclusion of the new paint scheme, customers can choose from eight colour options between the standard and special edition models - Candy Sonoma Red, Metallic Matte Fibroin Gray, Pearl Suzuki Deep Blue, Glass Sparkle Black, Pearl Mirage White and Metallic Sonic Silver. There’s a Special Edition variant on offer too which gets exclusive styling elements, including a contrasting seat cover, chrome mirrors and a brown floorboard. The Suzuki Access 125 competes against the Honda Activa 125, Honda Grazia, TVS NTorq 125, Hero Maestro Edge 125 and the Hero Destini 125'
    },
    {
      brand:'Benelli Leoncino',
      img:'https://bd.gaadicdn.com/processedimages/benelli/benelli-leoncino/source/m_leoncino_21565004252.jpg',
      description:'Benelli will be offering their neo-retro scrambler offering: the Leoncino in India. The 500cc scrambler is expected to be priced at Rs 4.5 lakh (ex-showroom). Powering the Leoncino 500 is the same 500cc parallel-twin motor found in the TRK 502s. In these bikes, this motor produces 47.5PS and 46Nm. The Leoncino comes equipped with a 50mm USD fork at the front and a monoshock at the rear. Stopping power comes from a 320mm dual-disc setup at the front and a 260mm single disc at the rear with dual-channel ABS as standard.'

    },
    {
      brand:'KTM',
      img: 'https://bd.gaadicdn.com/processedimages/ktm/ktm-duke/source/m_duke-200_11539345907.jpg?tr=w-439,e-sharpen',
      description:'KTM India launched the 200 Duke with single-channel ABS at Rs 1.6 lakh (ex-showroom, Delhi). This makes it Rs 8200 more expensive than the non-ABS version. Apart from the inclusion of ABS, the bike remains virtually unchanged. In terms of design, it draws inspiration from the old-gen 390 Duke. As far as colour schemes are concerned, the last update the 200 Duke received was in 2017 with new graphics, orange alloy wheels and three different colour schemes - orange, black & white. The current-gen motorcycle features the same all-digital instrument console with readouts such as a clock, tripmeter, odometer and distance to empty. Other notable features include an underbelly exhaust, an LED tail light, and 43mm USD front forks.'
    },
    {
      brand:'Bajaj Pulsar NS200',
      img:'https://bd.gaadicdn.com/processedimages/bajaj/bajaj-pulsar-200-ns/source/m_bajaj-pulsar-200-ns_11540274592.jpg?tr=w-439,e-sharpen',
      description:'19 January 2018: Back in 2012, when the Pulsar NS 200 was launched for the first time, it showed that first glimpse of what the next generation Pulsars will look like. Being absent in the market for a couple of years, the Pulsar NS 200 came back to the market with some nice and subtle changes. With a sharp styling akin to the bigger European street-fighters, the new Pulsar NS 200 offers a big bike like styling scaled down to a smaller size and segment, thus making it more aggressive. Packed with new age features like pilot lamps, clip-on handlebars, digital meters, backlit switchgear, disc brakes, single-channel ABS and LED tail lamp, the Pulsar NS 200 offers a premium over the conventional 150-180cc offerings. The Pulsar NS 200 is being offered with three different dual tone paint schemes, namely Graphite Black, Mirage White and Wild Red. The naked street-fighter retains the single cylinder, liquid cooled, four valve, triple spark, 199.5cc DTS-i engine from the previous model, with the same numbers: 23.5PS of maximum power at 9500rpm and 18.3Nm of peak torque at 8000rpm, though with enhanced levels of refinement than before. The suspension setup too has been carried forward, with a perimeter frame under the skin as well as hydraulic telescopic forks at the front and a Nitrox gas-charged mono-shock absorber with rectangular swing-arm at the rear. Starting at a price of Rs 1.20 Lakh (On road, Delhi), the new Pulsar NS 200 now comes with an option of single-channel ABS as well. It has claimed mileage of 30kmpl and a top speed of 135kmph.  The NS 200 competes against the likes of the TVS Apache RTR 200, the KTM 200 Duke and the Yamaha FZ 25.'
    },
    {
      brand:'Yamaha YZF R15 V3',
      img:'https://bd.gaadicdn.com/processedimages/yamaha/yzf-r15-v3/source/m_yzf-r15-v3_11540277694.jpg?tr=w-439,e-sharpen',
      description:'Yamaha has given the popular R15 a MotoGP treatment called the YZF-R15 Version 3.0 Monster Energy Yamaha MotoGP Limited Edition 2019. This is the second time the R15 gets a MotoGP edition and this time, it comes with a black theme with Eneos and Monster Energy stickers. The bike is priced at Rs 1,42,780 (ex-showroom Delhi) and it is dearer than the standard colour variant by Rs 2,500.'
    },
    {
      brand:'Honda Activa 5G',
      img:'https://bd.gaadicdn.com/processedimages/honda/honda-activa/source/m_activa_11539345125.jpg?tr=w-439,e-sharpen',
      description:'Honda has launched the limited edition variant of the Honda Activa 5G at prices starting from Rs 55,032 for the STD variant, going up to Rs 56,897 for the DLX (both prices ex-showroom Delhi). Both variants command a premium of just Rs 400 over the variants they’re based on. In terms of design, it gets two new paint options (black/silver and white/gold), ‘Limited Edition’ decals on the body panels and a clean pinstripe design at the front. Also, the white/gold paint option features a brown seat, which is a first for the Activa 5G. Mechanically, the limited edition variant remains identical to the standard model.The Honda Activa 5G is available in two variants - STD and DLX. The former is priced at Rs 54,632 while the latter is priced at Rs 56,497 (both prices, ex-showroom Delhi). In terms of features, the Honda Activa 5G gets a semi-digital instrument cluster, eco speed indicator, service due indicator, an all-LED headlamp, optional mobile charging socket and an 18-litre underseat storage. The Honda Activa 5G is powered by a 109.19cc, single-cylinder, air-cooled engine that churns out 7.96PS at 7500rpm and 9Nm at 5500rpm. Suspension duties are taken care of by trailing link suspension at the front and a monoshock at the rear. Braking hardware consists of 130mm drum brakes on both ends with CBS. The Honda Activa 5G competes with 110cc scooters such as the TVS Jupiter, Yamaha Fascino, and Hero Maestro Edge in its segment.'
    },
    {
      brand:'TVS Apache RR 310',
      img:'https://bd.gaadicdn.com/processedimages/tvs/tvs-akula-310/source/m_akula-310_11559304167.jpg?tr=w-439,e-sharpen',
      description:'TVS is offering 100 per cent finance on the Apache RR 310. You can also avail a low EMI of just Rs 4,444.TVS has launched the 2019 Apache RR 310 at Rs 2.27 lakh (ex-showroom Delhi). The updated motorcycle features a new glossy black paint option and a slipper clutch. Apart from these changes, the motorcycle remains identical to the standard variant. A few weeks back, TVS had silently updated the existing Apache RR 310 bikes to make them more refined and reduce vibrations. The new updates include an ECU remap, rubber piping around the edges of the windscreen, new bar-end weights and a chain roller. Aside from this, the bike remains unchanged. The Apache RR 310 draws power from a 312.2cc single-cylinder liquid-cooled fuel-injected motor. Peak power of 34PS arrives at 9700rpm and a maximum torque of 27.3Nm is generated at 7700rpm. It works in conjunction with a 6-speed transmission with negative backrack gears to eliminate false neutrals. The trellis frame is suspended on inverted forks up front and a monoshock at the rear. For braking, the Apache RR 310 employs a 300mm petal disc at the front and a 240mm petal disc at the rear. TVS offers dual-channel ABS as standard too. The main rival for the RR 310 is the KTM RC 390. Other competitors include the Kawasaki Ninja 300, Benelli 302R and Yamaha YZF-R3.'
    }
  ]
  constructor() { }
  sendBike(bike){
    this.bikeData=bike;
    console.log(bike);
    
  }

  ngOnInit() {
  }

}
