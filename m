Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E631BB8E7
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 10:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NdbJFgccUFOlyOlqzFnTNhR8jycJQVVcue7PaGwVYk=; b=bHjaOfI/vPfEiA
	FlxpyUyLhLPLYAUM+sGS5GQmoNSP+z5WGezSatvFzEQsbL/Jx+t07E3VTdXp10JNPiDpi3UBg8V2E
	vL+QJ5CaIdAYsVMGJMObw5j1R7cfGAcwsJA20BeeCERcKAwJgRKBKGpdtxkNXUQWlDX9VchnmJiTI
	cMPYF4xya3tqdoHI/uCj0VaaxdOteZqvf/g2Y7rrTWdA8wwoOoBbv16NOXi1leyyt5jRDJzGR72NC
	4nActQwBZB6IcKnAR3RWC3Dm04NCTL4adCIvhrlqcC592xAqTscCJ5TLwZ4SuWo16F7bmq4Xxl+sk
	tfWMhLvvRS09EbC7f+pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLiS-0008Qu-Ma; Tue, 28 Apr 2020 08:35:44 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLi3-0008EL-Cf
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 08:35:21 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200428083515epoutp035315ef683e2e24ea68ce71eb16827175~J7s7hTGzE2971929719epoutp03G
 for <linux-mtd@lists.infradead.org>; Tue, 28 Apr 2020 08:35:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200428083515epoutp035315ef683e2e24ea68ce71eb16827175~J7s7hTGzE2971929719epoutp03G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588062915;
 bh=kj0AZQjyB8bq7HfiZAC5pa5OvHgV5bBZZJJqk04y/cc=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=CG872KptafMKpswNyh4WQExkfWgUS6gR+6Qjlc/AhQemENd0kw+uYQSDe8Bbei1dD
 i0KSilE1FxX8nbFiwQ05liBfmyLgJE7thruEC4POlgiyMyI/c20v9pI5SuuOetAyha
 /Smir7iy+bsiJJcS66yuziwVIh4mP5w/2ZEh4IFw=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20200428083515epcas1p40ba271813631d02b91503db36250fd30~J7s7ODLtq0191301913epcas1p4d;
 Tue, 28 Apr 2020 08:35:15 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.166]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 49BFMQ3r3gzMqYl0; Tue, 28 Apr
 2020 08:35:14 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 7B.27.04658.2CAE7AE5; Tue, 28 Apr 2020 17:35:14 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20200428083513epcas1p3d03bcebf546e668eea3a28405c9a0b60~J7s5pX03K1921019210epcas1p3G;
 Tue, 28 Apr 2020 08:35:13 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200428083513epsmtrp1b81f6be4ab5c2defe29bfcadc6b3c5bd~J7s5oog_60285202852epsmtrp1X;
 Tue, 28 Apr 2020 08:35:13 +0000 (GMT)
X-AuditID: b6c32a39-a81ff70000001232-92-5ea7eac28798
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BF.F4.18461.1CAE7AE5; Tue, 28 Apr 2020 17:35:13 +0900 (KST)
Received: from asdf (unknown [10.88.100.192]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200428083513epsmtip1b841a5b76808f3cb90122ab1473347db~J7s5eY-tR0370303703epsmtip1F;
 Tue, 28 Apr 2020 08:35:13 +0000 (GMT)
Message-ID: <dd59f801a3eb175afba5c28fb628bdf1be38df2e.camel@samsung.com>
Subject: Re: [PATCH] mtd: spi-nor: Enable locking for n25q00/n25q00a
From: Jungseung Lee <js07.lee@samsung.com>
To: Tudor.Ambarus@microchip.com
Date: Tue, 28 Apr 2020 17:35:13 +0900
In-Reply-To: <8977895.SZaA0p1QKD@192.168.0.120>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRTu573brtHkNh8dJHBelNB8bM7pKi1BiYEKUv9FuG7usol3D3Y3
 yehhFqLma9GLoSS2lIQUp+i07GGhEhSJZE/I1oOUFJNeaMPuvBP97zvfOd/5fuf8DoHJzomj
 iVKznbGZaZYSb8UHHiekJI/OdRYrbtSSGt+bFZHmblWHRPPDnaNZfbYoycG1fe6z2vd/byFt
 Y38X0o6/Hgwpwo+wWUaG1jM2OWMusehLzYZsKv+wLlenzlAok5V7NJmU3EybmGwqr6Ao+WAp
 yztS8nKadfBUEc1xVOr+LJvFYWfkRgtnz6YYq561KhXWFI42cQ6zIaXEYtqrVCjS1HzlMdZY
 /WUVty6LT/Q8rUWVqF1Uh0IJINOh7scAj7cSMtKLoLOxfi0hI5cQLH0rERK/EbS2XxSvK7q+
 LgcVIwg+dj8UC4GPDwYH8DpEEFJSC+19pwMwnMyDuy4U0IrJRHi94hEF6AgyBkY6ZQEa44uH
 Z6+v+eJkPIxNOfEADiVTobvrnkSwTYL5p43B5tvB7w0XpDEwON+CBR4A5LQEnnwYQUJ9Hvjf
 /QnicJgb7w/2iYbZpuog5mDotlMiiC8g8HW6gwkVLMzfwQJmGJkAPcOpAh0LQyutSDAOg4Vf
 9WujACmFmmqZUELB95kLuIABXnxqCO5ZC1dqPMGteRC8a/6ONSO5a2Mc16ZxXBvGbQjrQlGM
 lTMZGE5pVW/+XQ9aO7/EPV409rxgFJEEorZJZx50FMtEdDlXYRpFQGBUhNRn5Cmpnq44ydgs
 OpuDZbhRpOaX7cSiI0ss/DGb7TqlOk2lUmnSMzIz1Cpqh/TKK7ZYRhpoO1PGMFbGtq4LIUKj
 K5EuMsz1OW3JE5fU8Lw3kt2pOFgQtbCa3HB1i7Jv+tqpptqOn6HZcSfO5P9KSnQ/CNM431dv
 aYk/5Dz6trDeb3AUxro1u/zF93VXJ725l+qrfPOXy159nJljlht9U/7F+/e85/f9vjlRNZnr
 /Te2NPEyc/lAW+SgPiKqcvfxXlHWp0cUzhlpZSJm4+j/AhFDEZQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCLMWRmVeSWpSXmKPExsWy7bCSnO7BV8vjDK6tN7J4dPM3q8XupmXs
 Fh+XOFj8P/uB3YHFY/OSeo87P5YyevRtWcXocfzGdqYAligum5TUnMyy1CJ9uwSujLan/1kK
 frFVrD/VydjAuIi1i5GTQ0LARGLVs19gtpDAbkaJ7k2ZEHEJiUc7v7B0MXIA2cIShw8XdzFy
 AZU8YJT417yRCSTOK+AhsWhzLYgpLOAisXsWI0gnm4CWxI3fm1hBwiIC8hJ7lwuBhJmBine9
 nAG2iEVAVeLY5YksIDangL7EulV72CGmb2eUuNKwnhmiQVOidftvdohrdCTenupjgdgqKPF3
 hzBEibzE9rdzmCcwCs5C0jELoWoWkqoFjMyrGCVTC4pz03OLDQsM81LL9YoTc4tL89L1kvNz
 NzGCA1pLcwfj9lUf9A4xMnEwHmKU4GBWEuF9lLEsTog3JbGyKrUoP76oNCe1+BCjNAeLkjjv
 jcKFcUIC6YklqdmpqQWpRTBZJg5OqQam0FWJS+4d1J/R68srs3kvV1Psiwl6obtOxWyUv9/J
 NOnn5H9bTLP/aEsx7bGeINTU65mS2rdgqWfKzL0S+hJSi7sWbOOZ+ffnTj4m/WP/VGVuVKz4
 MH1S7c82kxkb8r4+n/tEh/PCrSdvSu1r7Ko0Z1xVPb/D4YFx1t6T637w7ZLNjPzVpnAhNnXv
 8+RKZovp6hEzJD/d+pMgttE7PvCZdusvZ2Evjxmi7SG3IroC3SqjX0rZKb7SnhnLfJUle+lJ
 xrka2YFPTvFsM8wNeBk6xWHaJuO/F14raPgsnPc2Oe6M27wD1YUWE7bbaGp3e3r36eTyh/BY
 v5j/0MamMrb19oH6DSvPdgqYXr7hbVWixFKckWioxVxUnAgA0XvNc9cCAAA=
X-CMS-MailID: 20200428083513epcas1p3d03bcebf546e668eea3a28405c9a0b60
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200421063317epcas1p388256ada10113b38b92dca757cd11e41
References: <CGME20200421063317epcas1p388256ada10113b38b92dca757cd11e41@epcas1p3.samsung.com>
 <20200421063313.32655-1-js07.lee@samsung.com>
 <8977895.SZaA0p1QKD@192.168.0.120>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_013519_957917_AAC7FEEB 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-mtd@lists.infradead.org, vigneshr@ti.com, js07.lee@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi, Tudor,

On Tue, 2020-04-28 at 07:34 +0000, Tudor.Ambarus@microchip.com wrote:
> Hi, Jungseung,
> 
> On Tuesday, April 21, 2020 9:33:13 AM EEST Jungseung Lee wrote:
> > Tested on n25q00 with cirrus controller. The other is modified
> > according to the datasheet.
> 
> What is the difference between n25q00 and n25q00a? I'm reluctant to
> add flags 
> to flashes solely by datasheet info, without testing. I saw too many
> faults in 
> the past.
> 

The device ID of n25q00 is 0x20ba21, and the the device ID of n25q00a
is 0x20bb21. BAh = 3V, BBh = 1.8V. 

The Vcc they are using is differ. That's only one I could find in their
datasheet and they are also sharing their datasheet.

> Let me know if you're ok with applying just the changes for n25q00,
> they look 
> fine.
> 

I understand. It's also good for me.

Thanks,

> Cheers,
> ta
> 
> 
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
