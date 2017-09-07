 string wDict = ".0123456789k日月;以后每天";
            string wDeliverySchedule = "1号交16k，2月18日交60k，3号以后每天交60.5k，8号开始每天交900";
            string wWord = "";
            wDeliverySchedule = wDeliverySchedule.Replace("，", ";").Replace("；", ";").Replace(",", ";").Replace("开始", "以后").Replace("号", "日").Replace("K", "k").Replace("交", "");
            bool wAvailability = true;
            string[] wDeliverySchedules = wDeliverySchedu;

            }


            if (wDeliverySchedule.IndexOf("k") + 2 <= wDeliverySchedule.Length)
            {
                wAvailability = false;
                wWord = wDeliverySchedule;
            }
            else
            {
                if (wDeliverySchedule.IndexOf("月") > -1 && wDeliverySchedule.IndexOf("日以后每天") > -1)
                {
                    wValue = wDeliverySchedule.Substring(wDeliverySchedule.IndexOf("月") + ("月").Length);
                    wDateValue = wDeliverySchedule.Substring(0, wDel

iverySchedule.IndexOf("月"));

                    wDateValue = DateTime.Now.ToString("yyyy") + "-" + wDateValue + "-" + wValue.Substring(0, wValue.IndexOf("日以后每天"));
                    wValue = wValue.Substring(wValue.IndexOf("日以后每天") + ("日以后每天").Length);

                    if (wValue.IndexOf("k") != -1)
                    {
                        wValue = wValue.Replace("k", "");
                        wValue = (Convert.ToDouble(wValue) * 1000).ToString();
                    }
        

            wPunctuation = 1;

                }
                else if (wDeliverySchedule.IndexOf("日以后每天") > -1)
                {
                    wValue = wDeliverySchedule.Substring(wDeliverySchedule.IndexOf("日以后每天") + ("日以后每天").Length);
                    wDateValue = wDeliverySchedule.Substring(0, wDeliverySchedule.IndexOf("日以后每天"));
                    wDateValue = DateTime.Now.ToString("yyyy-MM") + "-" + wDateValue;
                    if (wValue.IndexOf("k") != -1)
                    {
                   

     wValue = wValue.Replace("k", "");
                        wValue = (Convert.ToDouble(wValue) * 1000).ToString();
                    }
                    wPunctuation = 1;
                }
                else if (wDeliverySchedule.IndexOf("月") > -1 && wDeliverySchedule.IndexOf("日") > -1)
                {
                    wValue = wDeliverySchedule.Substring(wDeliverySchedule.IndexOf("月") + ("月").Length);
                    wDateValue = wDeliverySchedule.Substring(0, wDeliverySchedule.IndexOf("月")

);

                    wDateValue = DateTime.Now.ToString("yyyy") + "-" + wDateValue + "-" + wValue.Substring(0, wValue.IndexOf("日"));
                    wValue = wValue.Substring(wValue.IndexOf("日") + ("日").Length);

                    if (wValue.IndexOf("k") != -1)
                    {
                        wValue = wValue.Replace("k", "");
                        wValue = (Convert.ToDouble(wValue) * 1000).ToString();
                    }
                    wPunctuation = 0;

                }


                else if (wDeliverySchedule.IndexOf("日") > -1)
                {
                    wValue = wDeliverySchedule.Substring(wDeliverySchedule.IndexOf("日") + ("日").Length);
                    wDateValue = wDeliverySchedule.Substring(0, wDeliverySchedule.IndexOf("日"));
                    wDateValue = DateTime.Now.ToString("yyyy-MM") + "-" + wDateValue;
                    if (wValue.IndexOf("k") != -1)
                    {
                        wValue = wValue.Replace("k", "");
     

                   wValue = (Convert.ToDouble(wValue) * 1000).ToString();
                    }
                    wPunctuation = 0;
                }
            }



            MessageBox.Show(wDateValue + "," + wValue);




            if (wAvailability)
            {
                MessageBox.Show("ok");
            }
            else
            {
                MessageBox.Show("交期回复中有非法字符【" + wWord + "】，请确认或联系管理员！");
            }

             le.Split(';');
            string SQL = "";
            string wDateValue = "", wValue = "";
            int wPunctuation = 0;


            for (int w = 0; w < wDeliverySchedule.Length; w++)
            {
                wWord = wDeliverySchedule.Substring(w, 1);
                if (wWord == "每")
                {
                    wWord = wDeliverySchedule.Substring(w, 2);
                    w++;
                }
                else if (wWord == "以")
                {
                    wWord = wDeliverySchedule.Substring(w, 2);
                    w++;
                }
                else if (wWord == "剩")
                {
                    wWord = wDeliverySchedule.Substring(w, 2);
                    w++;
                }
                if (wDict.IndexOf(wWord) < 0)
                {
                    wAvailability = false;
                    break;
                }
            }
            //1日交16k;2月18日交60k;3日以后每天交60.5k;8日以后每天交900
            if (wDeliverySchedules.Length > 0)
            {
                for (int k = 0; k < wDeliverySchedules.Length; k++)
               
 {

                }
            }
            else
            {
                SQL = "insert into zhrs_t_DeliverySchedule(cPOID,cInvCode,poDeliveryDate,poNotDeliveryQty,poDeliveryQty,mRemark)values()  \r\n";

                if (wDeliverySchedule.IndexOf("日以后每天") != -1)
                {

                }


                SQL += "delete zhrs_t_DeliverySchedule where flag=1 and cPOID='' and cInvCode='' \r\n";
                SQL += "update zhrs_t_DeliverySchedule flag=1  where  cPOID='' and cInvCode='' \r\n"
