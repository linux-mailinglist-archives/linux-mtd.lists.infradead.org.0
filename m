Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27279140270
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 04:39:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmXX8nDUgvFrBx78DZdvqYPFhbEuyjg1ma6rfYGedIE=; b=RpZ7NSdksr2nWH
	kgH6qHjpl8HqQBO8SmCJB+VufasV7FqMPCJZuo4QRoWeU6egEh8XTOOnQjh3+vfDayJl74oeLZ3oG
	QxHCMgPbn5GQs0ExDCAlIYep9IiNTTQm3oc8lzfSQXwG5yH0Wp5ts1a0omqh5cxZE3HFUPrLiI2MG
	OCFYxPJ5rcsq8ATCFIpBVTsAtiN44HTmTlTzfsxgEGwK8gtGJ1dMItBhlgMt06yOn2ZWXlQkc06c7
	grgq9xUb0Ofcw1qwmlm28iHMC/Mt0vrM5Ugx0lGpjxx5EzXm0ZiIrICrsZwyWqH4IAvEd2cowbaUB
	GzZ99mhS1QFXC2DOC1Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isITv-000424-4b; Fri, 17 Jan 2020 03:39:35 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isITe-0003zJ-Mx
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 03:39:20 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00H3bs2o063668;
 Fri, 17 Jan 2020 03:39:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=nuIy1AKUur+rkuPHpU5e8KcUcja25k7xLa+gNFNIWfo=;
 b=DQtxTb0fVig1P2lVno4+5cDrYQ5NeL1N9fMVqLBrJF4KxXMFl7JpfxnSgviQd51dCPM7
 RZXkPWUffhhYvJSpl2kcdRUG6TqFx0QBAQJnMYsAVko9EsttE6hLRCrGod92K114s+G7
 iuAU5MuynUpfa/7JK4G3vw/TWYBwF2x8PHGva1cTUVojM9zUQ9SKSxG1M3aZwl34tvcG
 jGbZl+GnIlJIQmoC1OdoeVDE2qeXuiRqZJyL2XB9oEWRd2rPrqpb36HZToIG832dTBNd
 5UN14I/BDnwSxJCo5v7LRI5Ar2Z3PHDKU1znWP80Tphd1jXEwKHtnCN/PiODfEay4Vit 5A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2xf73yxb0b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 17 Jan 2020 03:39:04 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00H3cs5g027486;
 Fri, 17 Jan 2020 03:39:04 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2xjxp4aaqu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 17 Jan 2020 03:39:03 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00H3cuob028532;
 Fri, 17 Jan 2020 03:39:00 GMT
Received: from kadam (/10.175.29.77) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 16 Jan 2020 19:38:56 -0800
Date: Fri, 17 Jan 2020 06:40:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH] ubi: Fix an error pointer dereference in error handling
 code
Message-ID: <20200117034035.GB19765@kadam>
References: <20200113132346.rmeamdmbxwvo7kgj@kili.mountain>
 <CAFLxGvyBO=_4-f+HQPZSaAL=aJouok3y=MxEKjup3Q=Cj0KKZg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFLxGvyBO=_4-f+HQPZSaAL=aJouok3y=MxEKjup3Q=Cj0KKZg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9502
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001170026
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9502
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001170026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_193918_885387_E9487D6B 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Richard Weinberger <richard@nod.at>, kernel-janitors@vger.kernel.org,
 linux-mtd@lists.infradead.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 12:50:14AM +0100, Richard Weinberger wrote:
> On Mon, Jan 13, 2020 at 2:24 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > If "seen_pebs = init_seen(ubi);" fails then "seen_pebs" is an error pointer
> > and we try to kfree() it which results in an Oops.
> >
> > This patch re-arranges the error handling so now it only frees things
> > which have been allocated successfully.
> >
> > Fixes: daef3dd1f0ae ("UBI: Fastmap: Add self check to detect absent PEBs")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/mtd/ubi/fastmap.c | 19 +++++++++++--------
> >  1 file changed, 11 insertions(+), 8 deletions(-)
> > ---
> >  drivers/mtd/ubi/fastmap.c | 21 ++++++++++++---------
> >  1 file changed, 12 insertions(+), 9 deletions(-)
> 
> This patch seems badly formatted.
> Copy&paste error?
> 

Oh, yeah.  Sorrry.  I shouldn't affect anything though.  I can resend
if you want.

regards,
dan carpenter


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
