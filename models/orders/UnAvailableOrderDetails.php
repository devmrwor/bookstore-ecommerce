<?php


class UnAvailableOrderDetails extends OrderDetails
{
   public function __construct ($book, $quantity, $openion = NULL, $reviewDegree = NULL)
   {
       parent::__construct($book, $quantity, $openion, $reviewDegree);
   }


}