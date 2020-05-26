Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7841E1EAF
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 11:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZQ1cioRW13Pnzjh6jmCiPHUgLxVfqtXw/vjNTYMFjs=; b=rH2BHuDNWYH6k4
	BN9dbk8PzwufA/Dh033xVRw0sq4JuwNNbeJmnhJGpQpdvnrKtRQGN9q/Z2ePUBJLRHIF/R20LIIx6
	MxQ6Z/2VSQ0xP5ZDWfKum/NaVsOyOd2WR3ohCptgzr8n2G/jB02SrEDGgjkcOJjUua7auPUGT4kZC
	Hd8N4NhFBHCxCrAh/lk1SZs08zY47aM34VwsfyXOTjw3/4yEIV8xbqUAyIsboSgr/UbaCmN5+PBVr
	4zmweTDkIczK/j/u7a/epZeSYp/uJay8yIDMJ6oXDqiyugEr66yH+vOKae4HR0ysHuOxuhmMotxfv
	SuqsNKnxxkeeYLKEAlmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdW04-0004dp-QF; Tue, 26 May 2020 09:35:56 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVzp-0004cP-KI
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 09:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=2472; q=dns/txt; s=axis-central1;
 t=1590485741; x=1622021741;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lYOrdbwLCfxNRuPV7xYB/IA5iWp39ljcVHyBHb1rbSM=;
 b=UviPHBAeGKOr+YVggsVdWzKULwnnoiAY+occIlYxZH9+QiMGIeug/JJG
 /jfrzeqVQL/Avn82oFXPI1AyBr7kTDLJasB7YzSl0WKRlkwcS72kUEmtS
 BvIAkyRJd8d9R8dXeXrjUmG+r69jRRkrcvYmCuq1lcBpfjmSkqt0AeyOI
 oyQqPJMQ1m6IANoTMuLy08wv9UUJrxY21Qst710nQhy1oJ3S7w/U+4BX6
 2Uy/xDN8+Nt31SmlAWrv1orlAFaEgggIuYeHITJnMNfOESQ7cjYSkoJ/M
 T4v9UAaLELHFrYBnfPSleS7bUynxMF0Dpmieo0HWJD1EcwGypgI/CdsG4 A==;
IronPort-SDR: ylb5CSPOIgsFKWU72P69Uc5XYcmuBQf8kbrFxICCMwey+bBAmDSIkmk1v7wVHBCfPV+NzyI4V2
 faZmdMgTy93qs8iOe3Mmn64sNyuJpDFftEjcVwqxR1Z9MbXdnqwzJ1rLJoUHeUNERoxm0fQyB9
 azH2+wsySBLQJXeCrlgM3644wz+gGGK8qYk+CK4KNsxL4ChygNxgutzKAfTAPlaV+g/wG6lbUr
 Zl+dA5UpH4PdB8WNvU+xP+uJmK8WOFaeAjhZP7tFOcPKCnw5wC5BWZg4OEaKruOxOebFECuwDP
 8V0=
X-IronPort-AV: E=Sophos;i="5.73,436,1583190000"; 
   d="scan'208";a="9110480"
From: Rickard X Andersson <Rickard.Andersson@axis.com>
To: Boris Brezillon <boris.brezillon@collabora.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>
Subject: SV: [PATCH v4 17/19] mtd: rawnand: Introduce
 nand_choose_best_vendor_sdr_iface()
Thread-Topic: [PATCH v4 17/19] mtd: rawnand: Introduce
 nand_choose_best_vendor_sdr_iface()
Thread-Index: AQHWMrvx0GB+9nbIC0qgjza4H/ESQKi5ExgAgAEHpSQ=
Date: Tue, 26 May 2020 09:35:38 +0000
Message-ID: <1590485738758.69301@axis.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-18-miquel.raynal@bootlin.com>,
 <20200525214530.16cd59c1@collabora.com>
In-Reply-To: <20200525214530.16cd59c1@collabora.com>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.13.13]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_023542_019661_842092EF 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.17 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 7:47 PM Miquel Raynal <miquel.raynal@bootlin.com> w=
rote:

> +/**
> + * nand_choose_best_sdr_iface - given a data interface, find the closest
> + * =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mode/timin=
gs set for this interface supported
> + * =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0by both th=
e NAND controller and the NAND chip
> + * @chip: the NAND chip
> + * @best_iface: the best data interface (can eventually be updated)
> + */
> +static int nand_choose_best_sdr_iface(struct nand_chip *chip,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 struct nand_data_interface *best_iface)
> +{
> + =A0 =A0 =A0 const struct nand_controller_ops *ops =3D chip->controller-=
>ops;
> + =A0 =A0 =A0 int mode, ret;
> +
> + =A0 =A0 =A0 /* Verify the controller supports the requested interface */
> + =A0 =A0 =A0 ret =3D ops->setup_data_interface(chip, NAND_DATA_IFACE_CHE=
CK_ONLY,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 best_iface);
> + =A0 =A0 =A0 if (!ret)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return ret;
> +
> + =A0 =A0 =A0 /* Fallback to slower modes */
> + =A0 =A0 =A0 for (mode =3D best_iface->timings.mode - 1; mode >=3D 0; mo=
de--) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D onfi_fill_data_interface(chip, best=
_iface,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0NAND_SDR_IFACE, mode);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (ret)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 continue;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D ops->setup_data_interface(chip,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 NAND_DATA_IFACE_CHECK_ONLY,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 best_iface);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!ret)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 return 0;
> +}
> +

Should we not start looping from "mode =3D best_iface->timings.mode" ? The =
first setup_data_interface call in the above function tests the specific ti=
mings or am I missing something?

BR,
Rickard
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
