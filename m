Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F99F8EE80
	for <lists+linux-mtd@lfdr.de>; Thu, 15 Aug 2019 16:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUKgB/ZzNP2TK+YX1meNG/9N5pZjFjJnYPQZRD9wkLc=; b=ZHsGTUm+DEJrX9
	D7XanpiZx53b4nWsAxZjffVWDGdtVd6X8otYgR0fkn2FRM0H5huQO3pAzmFjWajBC/vsnS/zGZVKC
	X66vQv9RtTeAgjOK9x6v8elw/02iQ+JtvM6hMNMMh4hMpmwjxYj/z0wd5cpR5AsPJb2pMGn43Ln7m
	gv6MNk0cC8tvH5SK5O8Vfkc5mTntFEuw42rAa+sFq/7EQa1sUIilySZX5Uzx6lFKaIZPZLBWguLp+
	g3NAPldSTnk1ndvIGEywm5VnwR2kNyLqKe7YyjhI9XlIcM2iO7cBdsr+tDuJnEhvi/VwqnO2W6QXT
	34OY3GG0J0ajyR1xl7Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyGxR-00078V-Kg; Thu, 15 Aug 2019 14:42:29 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyGx7-00077m-EV
 for linux-mtd@lists.infradead.org; Thu, 15 Aug 2019 14:42:14 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7FEWUWR094990;
 Thu, 15 Aug 2019 14:41:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=5gxVVJbUIjHvxflxaYWYWqhI0YhzFJVE4+OZrrgOoTw=;
 b=H747F4cdaFRXJ0Q2C8dc1eNfTpoRo68k2bOGKPjLdKqzfItNI2SObWAB2+u1HaudkOV1
 cSHxPV0cKUWzYfJbDFIx28xRjnrQ0bLe4fb0gW0GOwEm9nsY4KM8DM1oF86eIzjb0t9q
 seNDM5v1XHhsBtFVJl4wFs+HsXG6Q+Y4sGapSYMA7Sc3294VUwYylm5UXt8XblTS1gcp
 AiAB8aWPEmX9ZAXEHxQIP/JPKijTSIdivajH1/O88zI2eMtg2HaenLv6OeNl8rnhsQOe
 1Yk1eIwyPRH261HVy/ixCbdcUB5V1PI69sEp+9d68Wen+536uV2XfkCTaqRPEYoLcOFD wA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2u9pjqtywq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 15 Aug 2019 14:41:50 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7FEXZ09172178;
 Thu, 15 Aug 2019 14:41:50 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2ucgf130h3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 15 Aug 2019 14:41:50 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7FEffGY026655;
 Thu, 15 Aug 2019 14:41:42 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 15 Aug 2019 07:41:41 -0700
Date: Thu, 15 Aug 2019 17:41:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: walter harms <wharms@bfs.de>
Subject: Re: [PATCH] mtd: spi-nor: Fix an error code in spi_nor_read_raw()
Message-ID: <20190815144133.GA19557@kadam>
References: <20190815083252.GD27238@mwanda>
 <5D553585.2020907@bfs.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5D553585.2020907@bfs.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9350
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908150148
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9350
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908150148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_074209_621876_6C1396AF 
X-CRM114-Status: GOOD (  26.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, kernel-janitors@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>,
 Cyrille Pitchen <cyrille.pitchen@microchip.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 12:35:49PM +0200, walter harms wrote:
> 
> 
> Am 15.08.2019 10:32, schrieb Dan Carpenter:
> > The problem is that if "ret" is negative then when we check if
> > "ret > len", that condition is going to be true because of type
> > promotion.  So this patch re-orders the code to check for negatives
> > first and preserve those error codes.
> > 
> > Fixes: f384b352cbf0 ("mtd: spi-nor: parse Serial Flash Discoverable Parameters (SFDP) tables")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/mtd/spi-nor/spi-nor.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index 63af87609bac..986b0754495d 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -2903,10 +2903,10 @@ static int spi_nor_read_raw(struct spi_nor *nor, u32 addr, size_t len, u8 *buf)
> >  
> >  	while (len) {
> >  		ret = spi_nor_read_data(nor, addr, len, buf);
> > -		if (!ret || ret > len)
> > -			return -EIO;
> >  		if (ret < 0)
> >  			return ret;
> > +		if (!ret || ret > len)
> > +			return -EIO;
> 
> Bonuspoints to make this more readable:
> 
> 	if (ret==0 || ret > len)
> 		return -EIO;
> 
> that makes the intention more obvious.

That's not really related to the bug fix.

I do agree with your style though.  "ret" is a number here, and not a
bool or error vs no error so == 0 is nicer.

regards,
dan carpenter


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
