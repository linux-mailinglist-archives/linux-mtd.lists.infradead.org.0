Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76964612FA
	for <lists+linux-mtd@lfdr.de>; Sat,  6 Jul 2019 22:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwOP/y66AoTsKBThcUbVNUp52iNRbrThkCvXHHBUIv8=; b=V6QED+IUUjqmbz
	y4suGOcWQQHTNeRMQS93E3zAfnemekZoM63bfy0By8w2EOktWXLsrTc7G6ty9qky6cEq0R+niN0/c
	lFCUM04PdwyM+/MGmUtxfQ23qz14kD8HdqLOz41BMHVxKdSdZnGtd+lkZhVDFr38UgBBDYmfHb5Sq
	HcSOpSXb6toj+hby1phee0rmON1+EUk2qML/OesqslHDgG/LIenzA1I6mMVYuZlnZYeUfmWXA2A3C
	tKZ04eaHiM+mc54Z2Rv0atR0jX+8xjOsD9r7R8iNn9BXsE0wRD5AfRLuxl7F6f6kWoOft38RAy07M
	dTxqMNBjs5eYgqU9B7Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjrgr-0006Ds-V9; Sat, 06 Jul 2019 20:53:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjrga-0006DL-Li
 for linux-mtd@lists.infradead.org; Sat, 06 Jul 2019 20:53:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id z1so8485982wru.13
 for <linux-mtd@lists.infradead.org>; Sat, 06 Jul 2019 13:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=eZxx6Pxsrk0X5EPCBTh5hNaOTsYWBXI1kx0Fs4oLurU=;
 b=jRi7KWnT/yGplKFMITKucJlqi2sTyxn2tTIfmJet6FtunfICdtKFtnujXb16cm7g0c
 MEqXczpN7RKCV94UBnV3LZqhWORYFzsurg4p6LiPMusczjFGLtBXPLf3GUxP44/LFPtk
 L7CNGHKA9u9H2xZh+FNpNXm74Wr5ufgZ5aQcCIUzGS9VpYH+05iBlEdTN3ujDHLYgTRA
 Ee6hM7KH3QH6Q1/ptR45uD83cq/tZOV/1gQr4FxfW1U9qM8jLNm3/PYr8vi4WmKl9EqV
 7TSDr5BpMN1cpGR4+D7nhkC3cSSb35QUKh5bU/uMds8WpaVLyAv89JDQ3n2BnPEgUAqu
 HKLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eZxx6Pxsrk0X5EPCBTh5hNaOTsYWBXI1kx0Fs4oLurU=;
 b=YSXWcxNKKpaIaV0XMmOMSRxhPL5O5cS9GAViYX6NnMCqdCmKL2lNBpYLLliDix6YXx
 PuygVK5FtP1FcwTKbetnxJ5QSxPpTJpkvS1g6iTmO67UR0HMEFPb3qHyLyes3RE18DkY
 FtB6HyDMhIxlVfju0XmH4rFK22iAVscP4Eqv67/7W7Li70jIHeiv0rMyKEgYcUtaJjq+
 FosCWEpglgocvf6xOehYDiGHqOqG36NQxjN1QfajsHcEwgpRtp63yp6zqHcY8J/CXjvh
 s4pE299+c6ZlOP2J8RthYd3vI6yNVhIhQyASw2yaEbIxj/YhUEPQkjgjb3kpVviOKuFW
 8zTA==
X-Gm-Message-State: APjAAAWOqyfRxZPxQSIXXeRWlpCOnkZAmt5t8DNcF67AQqLy6NV1pRo9
 6Z72eROe3wbFUgzF7Ae0C6+G9KxLWdNxKcHWXZ0=
X-Google-Smtp-Source: APXvYqwr9goCyH9H6PbiB2qbwebE+ooDF9skGo2eHZ9KTl2ausMTsqGIdd9R3HG6GE64LIj6UxF0yRVklQdartryqB4=
X-Received: by 2002:a5d:514f:: with SMTP id u15mr1055932wrt.183.1562446408682; 
 Sat, 06 Jul 2019 13:53:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190705235649.72b513b1@xps13>
In-Reply-To: <20190705235649.72b513b1@xps13>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sat, 6 Jul 2019 22:53:17 +0200
Message-ID: <CAFLxGvwbwRqq1jfzJ2ut=cGOaEWHsODJAh_06Pu8AHBt8jnaXA@mail.gmail.com>
Subject: Re: [GIT PULL] mtd: nand: Changes for 5.3
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_135332_738303_41533E7B 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Frieder Schrempf <frieder.schrempf@exceet.de>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgNSwgMjAxOSBhdCAxMTo1NyBQTSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5
bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IEhlbGxvLAo+Cj4gVGhpcyBpcyB0aGUgTkFORCBQ
UiBmb3IgNS4zLgo+Cj4gVGhhbmtzLAo+IE1pcXXDqGwKPgo+Cj4gVGhlIGZvbGxvd2luZyBjaGFu
Z2VzIHNpbmNlIGNvbW1pdCBmMmM3Yzc2YzVkMGE0NDMwNTNlOTRhZGI5ZjA5MThmYTJmYjg1YzNh
Ogo+Cj4gICBMaW51eCA1LjItcmMzICgyMDE5LTA2LTAyIDEzOjU1OjMzIC0wNzAwKQo+Cj4gYXJl
IGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cj4KPiAgIGdpdDovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9tdGQvbGludXguZ2l0IHRhZ3MvbmFuZC9m
b3ItNS4zCgpQdWxsZWQsIHRoYW5rcyEgOi0pCgotLSAKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
