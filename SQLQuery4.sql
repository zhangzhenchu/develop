 string wDict = ".0123456789k����;�Ժ�ÿ��";
            string wDeliverySchedule = "1�Ž�16k��2��18�ս�60k��3���Ժ�ÿ�콻60.5k��8�ſ�ʼÿ�콻900";
            string wWord = "";
            wDeliverySchedule = wDeliverySchedule.Replace("��", ";").Replace("��", ";").Replace(",", ";").Replace("��ʼ", "�Ժ�").Replace("��", "��").Replace("K", "k").Replace("��", "");
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
                if (wDeliverySchedule.IndexOf("��") > -1 && wDeliverySchedule.IndexOf("���Ժ�ÿ��") > -1)
                {
                    wValue = wDeliverySchedule.Substring(wDeliverySchedule.IndexOf("��") + ("��").Length);
                    wDateValue = wDeliverySchedule.Substring(0, wDel

iverySchedule.IndexOf("��"));

                    wDateValue = DateTime.Now.ToString("yyyy") + "-" + wDateValue + "-" + wValue.Substring(0, wValue.IndexOf("���Ժ�ÿ��"));
                    wValue = wValue.Substring(wValue.IndexOf("���Ժ�ÿ��") + ("���Ժ�ÿ��").Length);

                    if (wValue.IndexOf("k") != -1)
                    {
                        wValue = wValue.Replace("k", "");
                        wValue = (Convert.ToDouble(wValue) * 1000).ToString();
                    }
        

            wPunctuation = 1;

                }
                else if (wDeliverySchedule.IndexOf("���Ժ�ÿ��") > -1)
                {
                    wValue = wDeliverySchedule.Substring(wDeliverySchedule.IndexOf("���Ժ�ÿ��") + ("���Ժ�ÿ��").Length);
                    wDateValue = wDeliverySchedule.Substring(0, wDeliverySchedule.IndexOf("���Ժ�ÿ��"));
                    wDateValue = DateTime.Now.ToString("yyyy-MM") + "-" + wDateValue;
                    if (wValue.IndexOf("k") != -1)
                    {
                   

     wValue = wValue.Replace("k", "");
                        wValue = (Convert.ToDouble(wValue) * 1000).ToString();
                    }
                    wPunctuation = 1;
                }
                else if (wDeliverySchedule.IndexOf("��") > -1 && wDeliverySchedule.IndexOf("��") > -1)
                {
                    wValue = wDeliverySchedule.Substring(wDeliverySchedule.IndexOf("��") + ("��").Length);
                    wDateValue = wDeliverySchedule.Substring(0, wDeliverySchedule.IndexOf("��")

);

                    wDateValue = DateTime.Now.ToString("yyyy") + "-" + wDateValue + "-" + wValue.Substring(0, wValue.IndexOf("��"));
                    wValue = wValue.Substring(wValue.IndexOf("��") + ("��").Length);

                    if (wValue.IndexOf("k") != -1)
                    {
                        wValue = wValue.Replace("k", "");
                        wValue = (Convert.ToDouble(wValue) * 1000).ToString();
                    }
                    wPunctuation = 0;

                }


                else if (wDeliverySchedule.IndexOf("��") > -1)
                {
                    wValue = wDeliverySchedule.Substring(wDeliverySchedule.IndexOf("��") + ("��").Length);
                    wDateValue = wDeliverySchedule.Substring(0, wDeliverySchedule.IndexOf("��"));
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
                MessageBox.Show("���ڻظ����зǷ��ַ���" + wWord + "������ȷ�ϻ���ϵ����Ա��");
            }

             le.Split(';');
            string SQL = "";
            string wDateValue = "", wValue = "";
            int wPunctuation = 0;


            for (int w = 0; w < wDeliverySchedule.Length; w++)
            {
                wWord = wDeliverySchedule.Substring(w, 1);
                if (wWord == "ÿ")
                {
                    wWord = wDeliverySchedule.Substring(w, 2);
                    w++;
                }
                else if (wWord == "��")
                {
                    wWord = wDeliverySchedule.Substring(w, 2);
                    w++;
                }
                else if (wWord == "ʣ")
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
            //1�ս�16k;2��18�ս�60k;3���Ժ�ÿ�콻60.5k;8���Ժ�ÿ�콻900
            if (wDeliverySchedules.Length > 0)
            {
                for (int k = 0; k < wDeliverySchedules.Length; k++)
               
 {

                }
            }
            else
            {
                SQL = "insert into zhrs_t_DeliverySchedule(cPOID,cInvCode,poDeliveryDate,poNotDeliveryQty,poDeliveryQty,mRemark)values()  \r\n";

                if (wDeliverySchedule.IndexOf("���Ժ�ÿ��") != -1)
                {

                }


                SQL += "delete zhrs_t_DeliverySchedule where flag=1 and cPOID='' and cInvCode='' \r\n";
                SQL += "update zhrs_t_DeliverySchedule flag=1  where  cPOID='' and cInvCode='' \r\n"
