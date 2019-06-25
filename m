Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D9B5525F
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 16:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbXEK664peDLkLnj9o2SAOEXeP3tPOhxZkGOhrXuhgU=; b=phl5bg8/JBpHOO
	CSesNMlrMSJqu6zg1Msz5U9IW8sOE+ZsCWmYcLMa4//yI4kSzh0syZrot0scYGYtAJWU6ufQesXip
	mJzTqU9nUcdmBWD1rCex2UDwEibAD4S8nW625uDJNYPmQpSW9nKOt2YmUB1sTYx7wHhqcQ+f+MQN5
	hodUTLP2teYMGP2/mDhlNrBZZfgXzC5gvhF25QUFvKCqOkPPTgIQabklaft/amF3IyEZ4ZHoKBGMD
	eztVdYE9ENXC8X0T3Q5rTkQqrOTjO0zturuMh1SWvhnztzJKuQx0Z5Km5rhdZWCmtxrFfvxEHZyNT
	UpSdvbNzmGfjdt2eLrTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmhU-0003Qx-EG; Tue, 25 Jun 2019 14:45:36 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmh5-00036L-Tr
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 14:45:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id 205so7747882ljj.8
 for <linux-mtd@lists.infradead.org>; Tue, 25 Jun 2019 07:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=19byvgMooTxDLIKVTh81InKh4X1Q8jthyNGnpMWPTR8=;
 b=lLgMXanVjEQcfCC9RLZP8uBcI+qZDhEJK3RhnXgJnRkmp8YmdmIanryeO/DXIyTczA
 Qau20L/HQc5RzI56ASZ/J+q/SQyssmS80dEaB4v/jDB8ZrlWWu7TZZn6VEZg4Oh8DOux
 VG4cG5O9G5SZGToAPJd4pMsri0a9UmL8H/UNlJgRSraTm1zQpI4cFVrqD5pzZWimcSsg
 bu8fZQuw1RE69f00e1pRjQ0gFVWuGHkV9Q7Cjvt/pKdP/uNW5fJc4OZgowREyYzx6x0k
 cVK0bs5DJSd2EkDG2csK+VrVn3P8CNa6+KcEUyuJy75LugOBVUPdU62yydCuAOOlfZd2
 cd2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=19byvgMooTxDLIKVTh81InKh4X1Q8jthyNGnpMWPTR8=;
 b=LKfjKfJTyQRp2iA9c2sKJ2yD+5XoHldAUR591wnUydw18QzVPYZnccq7IT70RSvNv3
 SrFXWazTWWfG5h1JiPRGv4FXEZpzRkpl00etivmK/J6Xt0TmjHD+6+ULlRxsHY3vm6wL
 ggBH8omrribGONxMrTBJsd4ld55LubzNk1z7SaM+j2819UL2m4y/cBXs97dwaC1dtFIZ
 7t/dUKRHrPWQGNC7w1ALhybSblE8UsD3L4GewRxqx7of2JOZl7wNEcRKkudkIeRnfkkM
 vggaoHeylBSEXkZhHb7pDIZBuLPK/bEe0N3h2MHncpKjgnGKojwR+OYtb2Cilyd4PgGR
 6TNg==
X-Gm-Message-State: APjAAAVDB0CgshDhPRH6PkZfEPzl1QXNGDdu1dZAlLPoYgmEVb4W1VtW
 oY3YuuR01h56ibq6RJHB3rVaZUZW
X-Google-Smtp-Source: APXvYqzE+mgvqcRuw0XLGzJPuIidwv1afsSu+J/Ue9GwMrC/8NbuQdpemiOsmTQmluXQ0eeNwVCDOQ==
X-Received: by 2002:a2e:970d:: with SMTP id r13mr73976367lji.126.1561473908776; 
 Tue, 25 Jun 2019 07:45:08 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.googlemail.com with ESMTPSA id b62sm2287608ljb.71.2019.06.25.07.45.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 07:45:07 -0700 (PDT)
Subject: Re: [v3 1/2] mtd: nand: Add Cadence NAND controller driver
To: Piotr Sroka <piotrs@cadence.com>
References: <20190614150638.28383-1-piotrs@cadence.com>
 <20190614150956.31244-1-piotrs@cadence.com>
 <dd96bd1b-e944-e95d-31c9-6dd1d0b5720f@gmail.com>
 <20190625130231.GA31865@global.cadence.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <20110899-d456-8403-f9be-663be5fcd07e@gmail.com>
Date: Tue, 25 Jun 2019 17:45:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625130231.GA31865@global.cadence.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_074511_988635_3525CC7A 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Marek Vasut <marek.vasut@gmail.com>,
 Paul Burton <paul.burton@mips.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

MjUuMDYuMjAxOSAxNjowMiwgUGlvdHIgU3Jva2Eg0L/QuNGI0LXRgjoKPiBIaSBEbWl0cnkKPiAK
PiBUaGUgMDYvMTYvMjAxOSAxNjo0MiwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiBFWFRFUk5B
TCBNQUlMCj4+Cj4+Cj4+IDE0LjA2LjIwMTkgMTg6MDksIFBpb3RyIFNyb2thINC/0LjRiNC10YI6
Cj4+Cj4+IENvbW1pdCBkZXNjcmlwdGlvbiBpcyBtYW5kYXRvcnkuCj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBQaW90ciBTcm9rYSA8cGlvdHJzQGNhZGVuY2UuY29tPgo+Pj4gLS0tCj4+Cj4+IFtzbmlw
XQo+Pgo+Pj4gKwo+Pj4gKy8qIENhZG5lbmNlIE5BTkQgZmxhc2ggY29udHJvbGxlciBjYXBhYmls
aXRpZXMgZ2V0IGZyb20gZHJpdmVyIGRhdGEuICovCj4+PiArc3RydWN0IGNhZGVuY2VfbmFuZF9k
dF9kZXZkYXRhIHsKPj4+ICvCoMKgwqAgLyogU2tldyB2YWx1ZSBvZiB0aGUgb3V0cHV0IHNpZ25h
bHMgb2YgdGhlIE5BTkQgRmxhc2ggaW50ZXJmYWNlLiAqLwo+Pj4gK8KgwqDCoCB1MzIgaWZfc2tl
dzsKPj4+ICvCoMKgwqAgLyogSXQgaW5mb3JtcyBpZiBhZ2luZyBmZWF0dXJlIGluIHRoZSBETEwg
UEhZIHN1cHBvcnRlZC4gKi8KPj4+ICvCoMKgwqAgdTggcGh5X2RsbF9hZ2luZzsKPj4+ICvCoMKg
wqAgLyoKPj4+ICvCoMKgwqDCoCAqIEl0IGluZm9ybXMgaWYgcGVyIGJpdCBkZXNrZXcgZm9yIHJl
YWQgYW5kIHdyaXRlIHBhdGggaW4KPj4+ICvCoMKgwqDCoCAqIHRoZSBQSFkgaXMgc3VwcG9ydGVk
Lgo+Pj4gK8KgwqDCoMKgICovCj4+PiArwqDCoMKgIHU4IHBoeV9wZXJfYml0X2Rlc2tldzsKPj4+
ICvCoMKgwqAgLyogSXQgaW5mb3JtcyBpZiBzbGF2ZSBETUEgaW50ZXJmYWNlIGlzIGNvbm5lY3Rl
ZCB0byBETUEgZW5naW5lLiAqLwo+Pj4gK8KgwqDCoCB1OCBoYXNfZG1hOwo+Pgo+PiBUaGVyZSBp
cyBubyBuZWVkZWQgdG8gZGVkaWNhdGUgOCBiaXRzIHRvIGEgdmFyaWFibGUgaWYgeW91IG9ubHkg
Y2FyZSBhYm91dCBhIHNpbmdsZQo+PiBiaXQuIFlvdSBtYXkgd3JpdGUgdGhpcyBhczoKPj4KPj4g
Ym9vbCBoYXNfZG1hIDogMTsKPiBJIG1vZGlmaWVkIGl0IGxvY2FsbHkgYnV0IGl0IGxvb2tzIHRo
YXQgY2hlY2twYXRjaCBkb2VzIG5vdCBsaWtlIHN1Y2gKPiBub3RhdGlvbgo+ICJXQVJOSU5HOiBB
dm9pZCB1c2luZyBib29sIGFzIGJpdGZpZWxkLsKgIFByZWZlciBib29sIGJpdGZpZWxkcyBhcwo+
IHVuc2lnbmVkIGludCBvciB1PDh8MTZ8MzI+Igo+IFNvIG1heWJlIEkgd2lsbCBsZWF2ZSBpdCBh
cyBpcy4KCllvdSBtYXkgYWxzbyB1c2UgdGhlICJ1OCA6IDEiIGZvcm0gdGhlbiwgdG8gc2F0aXNm
eSB0aGUgY2hlY2twYXRjaC4gUHJvYmFibHkKInVuc2lnbmVkIGludCA6IDEiIHdpbGwgYmUgdGhl
IGJlc3QgaW4gdGhpcyBjYXNlLCBpdCdzIHVwIHRvIHlvdS4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tdGQvCg==
