Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463BD168330
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Feb 2020 17:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iEgIb0ZIab68pA0T/wTFWM2MVJm1FM6r+ML6zvB5NVo=; b=AKSpz6HjgC96DqK9qtRxU6Yux
	vPHr6KKjI6f4pAvrgvl2wwLgXgayOIyHQ9TRBSSZHmK+NFSCVrcfel9HAmIQ+HFI1p2BEcBAoRb6o
	MU1SFJJZwzIIxas+e06jlyxBESucpwwBilm1+DJZmDA18KvoQi8yB4TrgJ4Fc25hOvUJOdZFEcd9A
	DPu4eKuPOO9qDkOXfBVPoyP+cN8ucpcHWVhPu53ZryOVuPJFpNiPtr1TGITgyYqTlPabr28pB6aJe
	Jnx71zgnRhC0b86PH5MRgtlb0OS/30fu9PdAa9QAWmwqNw8hbrjFXJYKEmYNuAtgHBr34cUH3KaDl
	eJpg36agw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5B53-0001LL-BJ; Fri, 21 Feb 2020 16:23:09 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5B4t-0001Kh-As
 for linux-mtd@lists.infradead.org; Fri, 21 Feb 2020 16:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582302169;
 bh=iZ4Md3zA+8TD9x9QKRbjlp2m/9bXeZixQfkesgDAkac=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=TddvcEpL/tolldrVc1TonB7MhdC8mJtCN2pvab9mXtU+pS85jqPGGZUQGlbfG/2dg
 XSGIy+jDJ4qXS/8L0wY9MRcvd4qFyG8HXLQz+x9ggpubgrVwm0F/e7OTx3qJlwK+T2
 Pshokq0b7QRKCopDf9FMxYsPNdfzcns94K6OXipU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([5.146.194.18]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MLi8m-1ineBs3qV6-00HbeR; Fri, 21
 Feb 2020 17:22:49 +0100
Date: Fri, 21 Feb 2020 17:22:48 +0100
From: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH] mtd: spi-nor: Simplify loop in spi_nor_read_id()
Message-ID: <20200221162248.GG2031@latitude>
References: <20200218151034.24744-1-j.neuschaefer@gmx.net>
 <5604429.rq6fcmI4QA@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <5604429.rq6fcmI4QA@localhost.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:gwSw2P5bp5MrtvsX8GS9o9bSpULoPgmp11M6pF4Ku/78sHNr/JF
 P2ZE2CgtSpDSByK32+K/Xl1AXHZ1z9NWFvGLzuNSiVcyAd9Y6ZWwau6U2FdCWHrYdpK4LeS
 h/fL0T/MLF7am+a4r9xNNJQoAQKKEB/B1it4sskPOA7CkN8qHtjfiNaRwjUeTs5/38WfwW4
 oVj7uMyay+CK1E0jX0PUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QZNsp1nEOEo=:LDUNmkmoNsMqkGiA33O0EJ
 DFtkWy48EE6zE5K0xqlxyCcyrvic4VCBtDutwv2AJYjW79RS2EQZ9piwXRi3QOCyYGQAgAb97
 2M4ACEyFex7FMUiaY7FDT+CLPNGRp7Phy6FWxgi30HmI252AZDPxpYWmTq7w1qrCigZm85c3N
 sum8nAoUsK0/HrlrHFAwVsXJGYhq033x6sZqQpnPoPYYeRVP9Wq+Yg9ZNrgtp3s+QAud6cUBa
 NAZEr2i4gofjLzJ/52WEzf8FWp7a25WTYPACLLIrPqmQMvalnpSWb45G+riqz0sCfxhAi+wBR
 n9o84z+4trfK6Tc3iR48yYSK7nYZNfVrCKuZPueZlmutZZET7aTSPBrWSHXUZzKV4idxU0E4M
 5O5bwEJ7yMREar+tJl3rV/o0KKnUgRrq2+3HQMB5Y9WS+HaCCvcuBePM5X2yvMI7DQomYYt6/
 pvbsKyfY5llx0LZqddCeulux4xgCRBSIf6t51Uv4EZKg6UagozC2DrrJXPj9km7+d07nEO7EV
 J9JW1r33V7ch1+ADLIfatIHg3rzbmsrq6N0kVVXFYjBPTySOCR7EMX1rkU76yCu78wREFc+eU
 2ywLeXKbmWVoFD+T6q2krCpFjsPZV2xYuk6e0JX0mbRDl6WBBuBV9KXCq2Ev4PzfzpfQv9rOM
 JNEH1YF9DXvWwjw/HmhoWnwWuXLfT+aqOJGo0nekDM5qu6KybO64hRpT1pR9UUvsK+w+MPBDi
 EtmOWkDsIR1iQjZm+Nch355AiDUeBSACTpgBamSNMbD9h3wjP5cVgAerOf9gQinwj0qRBHWFp
 FFJXhFyAgtSChhcnk3SE6v3TxEgg5/buj5pwRl2Db847pch4fbwXvLT3S4ln+S4eVjWVVeBPY
 Gz0NfOZ+aRgtPBb43vkYZIk+boIh4vLSp62bxnZFScNHFd6UPsPHOjPwbo9VyZhNSgQWX/kII
 auSD20lck2Z7CtFbNfJ0W1Bt0MKDTuFWEizc3MG0b7oJLVL9WZCREKDK2Scxpk+UV8EqfEfRR
 dwFTGhY5xHRzt17i0WQJVZaGoJumIgH9yFn520gLNajGfADfUvUNnOY4ttGfQYxh/hTy/kwP8
 VGp5kINqpVtI2Uy/Qya6aBCO4lyef9EaxoZWrYfaBhKNE9vzVUTfNNc/oGyzAktNB2+2X/WJD
 3TAc01VTHlayDG77N/OI1NoZBkb4k5bl8EN8tm8OVreFdrraOE3O+i6/OmZp9NgdCS0FP+VBD
 bWq1BjIw+PxHMSghW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_082259_671666_90FA88A4 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [j.neuschaefer[at]gmx.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vigneshr@ti.com, richard@nod.at, j.neuschaefer@gmx.net,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Type: multipart/mixed; boundary="===============1605036256187913778=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============1605036256187913778==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fwqqG+mf3f7vyBCB"
Content-Disposition: inline


--fwqqG+mf3f7vyBCB
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 19, 2020 at 08:06:08AM +0000, Tudor.Ambarus@microchip.com wrote:
[...]
> >  static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
> >  {
> > -       int                     tmp;
> > +       int                     tmp, i;
>=20
> while cleaning this function, would you rename tmp with ret?

Good idea, I'll do that in v2.

> >         u8                      *id =3D nor->bouncebuf;
>=20
> and please drop this tab between u8 and *id

The same with the other variables in this functions? They have tabs
between the type and the pointer star / name as well.

>=20
> >         const struct flash_info *info;
>=20
> Also, IMO, the definition of variables should be done with the focus of=
=20
> avoiding stack padding. With this in mind, I would first define the point=
ers=20
> and then the ints and smaller types. But there are others than prefer def=
ining=20
> the variables in a tree/reverse-tree way, depending of the length of the =
line.=20
> There's no agreement on this, either way if fine, do as you prefer.

I have no preference here. I think I'll keep it as is for now.


Thanks for the review,
Jonathan Neusch=C3=A4fer

--fwqqG+mf3f7vyBCB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl5QA8sACgkQCDBEmo7z
X9uH2Q//fzyLMsrdTB+uonzF2+F5EOdbALvPPFFgkuf08zQK5s/IVEXafKly3MDb
aBxj7lBRRADOjT4+UBTVRUr2ouB1VRw4oF1+qy6Oz0Uwcz7UrnSAmq6MezY12Gqp
wdfsOem2psiVOVEnAyeLbyFFTaBYqtX+GYc7Jyo3yfYh08iJ/ryFAPyppgahsQfv
D7j13FFrkOuOEJ/PjWUYIedD9NvTCuUb9EJrgRdGB/PzQtnvdRh2bPnEaNe6HZMs
xwOptqK8El9+RFT/PyXi7W/fxvTw2UxEYOZexUoJQL8OOb2w2kqz4VD1B7wZ5Vgw
nI2TIghlZ7k2PB2FC9Lsg+IakSvkkDsvCKqzM4B3fIKkJOiE8TDTxHZoo5CVH3B+
A5GdvJGc0gdfV2GuF9QxigGTx2C178jsQBmrT8f8i8pK8507ZSbx7MXfypF6X0Ax
gD0L5etKeJthGfDxc1sjywz/UEKF1kawXf5wVFhOHlZgruoePr7+RSna3iqgRAd1
QTx714TzBeeSBbTp9BINQnDb5FTgKgMQPCHKYlLjAsMgImEJ787AtlOyHhIAbPaq
dh46BHs5SlTei1js7/mEZTY/WaAQkzNP/Q5mUnCu//lN2HkfDM6hD/yWMT9Xrtz6
QlRksCjxSVihsH8ojX98SphmCWOng1kAvL5MTGZHx0rfheUMf6Q=
=ZS6o
-----END PGP SIGNATURE-----

--fwqqG+mf3f7vyBCB--


--===============1605036256187913778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============1605036256187913778==--

