<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
          User::create([
              'name'=> 'Nelson Rojas',
              'email'=> 'nel@gmail.com',
              'password'=> bcrypt('123456'),
              'dni'=> '12345678',
              'address'=>'',
              'phone'=>'',
              'role'=>'admin'
          ]);
          User::create([
            'name'=> 'paciente maicol',
            'email'=> 'paciente@gmail.com',
            'password'=> bcrypt('123456'),
            'dni'=> '12345678',
            'address'=>'',
            'phone'=>'',
            'role'=>'patient'
        ]);
        User::create([
            'name'=> 'doctor mayumi',
            'email'=> 'doctor@gmail.com',
            'password'=> bcrypt('123456'),
            'dni'=> '12345678',
            'address'=>'',
            'phone'=>'',
            'role'=>'doctor'
        ]);
        factory(User::class, 50)->states('patient')->create();
    }
}
