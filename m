Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907A561619
	for <lists+linux-mtd@lfdr.de>; Sun,  7 Jul 2019 20:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eywaDA0/umT70UXW5Cuykz6AH7qN6VvmQFSu6qhV5HY=; b=L6w834DR7HGPWW
	U6dJ/NUBbTBiJUZnf7Lnajws5HCyhDX+8mk2ajCpS66N7Tz1Z5se8ZxToZtSdvRirdmHf4/5SEGXP
	cl+NFkYWUBbOgv4ofbbFWovS5y/+YbTpw2fh2BDNiV3uMv4cG1L9+VypSAXtIerRu86jpZX1p31Au
	FMInlKD2bwAnbVgQPRNofh7X1ppGl38k+GVVpVofJhnEYLRNP6rmLzrrTML8T9YNfnWkE5BIr8sft
	k5Lu9e+II9EJkLILu9DCrEi9+JADeAiVtf6/03sHjJ0b/9+KwYPMWmTVxY8KYE0MLu32J6s5HN3lZ
	Te+mCUsyCjotLTcUL1eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkCAN-00040u-TV; Sun, 07 Jul 2019 18:45:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkCA7-00040U-6V
 for linux-mtd@lists.infradead.org; Sun, 07 Jul 2019 18:45:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id n4so14707380wrs.3
 for <linux-mtd@lists.infradead.org>; Sun, 07 Jul 2019 11:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SyoEZcNMbR30dSLw6YPvBoKoR6uCpMhPS8yqLfypSMU=;
 b=PyLd6w4BNDFzkyrp8BS4diLjeNVJmjAM1OzVBD8hu8DoZ6DixOPh1q5GV5BH49+9cD
 Gw7calZ1w1+8ub6Ix0hss75VejmzHsp4gVflIoksrUy0nXJjwo9zXry1WzvBKx/HQCn9
 GCVbIxbgLZ+Ax6x3xjvKYM6FDLtaX+HXST1EzSQYiuqbZDaL9gvH2u5eQq8XvwVsIwoI
 FZWgcpYjmOtalGhZ7pyXDIqPEcFKHoxx7PFs8NyAirhOX5cd34W0+/W635JhJwUlPs75
 2I6EjzbUAERHWWg1nOR4tLtcdjPqhblH7k/1Tu0Qmw+Jl9srPdz7ksW6m1fnkd2naet+
 FgCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SyoEZcNMbR30dSLw6YPvBoKoR6uCpMhPS8yqLfypSMU=;
 b=gC5KNaURMbVDJcKtfceIM12KWgvytPO75btouG5FRUXrebOCg1awg0XMIgNn0np954
 /VeyyBo7KAbYnWicJook/UyHVpoP29GUXld8V1DZpkrIp3FeTjZ/tFximuY8qltCkt2R
 UOvelX6ammEOY5ovi3UrLK05atpq4nbcgISWiMdOu6W/DvUQhUeRjfgxb0B0lc9vNX04
 BEJr4Vimsi4axIGYmspJIxF+HF8MjTe3GyA8pzNdkD1mrZx4Xe08T4ik4Zuqa4wlxluz
 X+IYtPIat+g5Otoy6AgRtd5arhFCVk+lgxVJWJ1Y6pVv8g9NZh8sKmiIuZESJCs6AEDD
 XsHw==
X-Gm-Message-State: APjAAAWme3Op9aVc2q5KpLzwGAxR8d9JBbiVvHYjIh9jPKa8ICIBlGHe
 2NCQoNEcWNXy7CovUpQ4inu29wUiqWBujdNl9dMlIQ==
X-Google-Smtp-Source: APXvYqzTGv24J/JvH7QB35BSNC+3DNS4muQ9GiM7duKJwTzddTzS/wguXzLR8Zqt09/cXTfwYRoi3r7O81pYoZG9S4Q=
X-Received: by 2002:adf:ea8b:: with SMTP id s11mr14234198wrm.100.1562525120417; 
 Sun, 07 Jul 2019 11:45:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190627070745.9561-1-yamada.masahiro@socionext.com>
 <363893471.18166.1561621193771.JavaMail.zimbra@nod.at>
In-Reply-To: <363893471.18166.1561621193771.JavaMail.zimbra@nod.at>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 7 Jul 2019 20:45:08 +0200
Message-ID: <CAFLxGvz-ukX9BucZ8iGzioJC1iT2Q=jubHBJep6Zup6pogYVJQ@mail.gmail.com>
Subject: Re: [PATCH] mtd: abi: do not use C++ style comments in uapi header
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_114523_266525_947148A8 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Marek Vasut <marek.vasut@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgOTo0MCBBTSBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hh
cmRAbm9kLmF0PiB3cm90ZToKPgo+IC0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiA+
IFZvbjogIk1hc2FoaXJvIFlhbWFkYSIgPHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQuY29tPgo+
ID4gQW46ICJEYXZpZCBXb29kaG91c2UiIDxkd213MkBpbmZyYWRlYWQub3JnPiwgIkJyaWFuIE5v
cnJpcyIgPGNvbXB1dGVyc2ZvcnBlYWNlQGdtYWlsLmNvbT4sICJNYXJlayBWYXN1dCIKPiA+IDxt
YXJlay52YXN1dEBnbWFpbC5jb20+LCAiTWlxdWVsIFJheW5hbCIgPG1pcXVlbC5yYXluYWxAYm9v
dGxpbi5jb20+LCAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0PiwgIlZpZ25lc2ggUmFnaGF2ZW5k
cmEiCj4gPiA8dmlnbmVzaHJAdGkuY29tPiwgImxpbnV4LW10ZCIgPGxpbnV4LW10ZEBsaXN0cy5p
bmZyYWRlYWQub3JnPgo+ID4gQ0M6ICJNYXNhaGlybyBZYW1hZGEiIDx5YW1hZGEubWFzYWhpcm9A
c29jaW9uZXh0LmNvbT4sICJsaW51eC1rZXJuZWwiIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnPgo+ID4gR2VzZW5kZXQ6IERvbm5lcnN0YWcsIDI3LiBKdW5pIDIwMTkgMDk6MDc6NDUKPiA+
IEJldHJlZmY6IFtQQVRDSF0gbXRkOiBhYmk6IGRvIG5vdCB1c2UgQysrIHN0eWxlIGNvbW1lbnRz
IGluIHVhcGkgaGVhZGVyCj4KPiA+IExpbnV4IGtlcm5lbCB0b2xlcmF0ZXMgQysrIHN0eWxlIGNv
bW1lbnRzIHRoZXNlIGRheXMuIEFjdHVhbGx5LCB0aGUKPiA+IFNQRFggTGljZW5zZSB0YWdzIGZv
ciAuYyBmaWxlcyBzdGFydCB3aXRoIC8vLgo+ID4KPiA+IE9uIHRoZSBvdGhlciBoYW5kLCB1YXBp
IGhlYWRlcnMgYXJlIHdyaXR0ZW4gaW4gbW9yZSBzdHJpY3QgQywgd2hlcmUKPiA+IHRoZSBDKysg
Y29tbWVudCBzdHlsZSBpcyBmb3JiaWRkZW4uCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTWFzYWhp
cm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KPgo+IEFja2VkLWJ5OiBS
aWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0PgoKQXBwbGllZC4gOi0pCgotLSAKVGhh
bmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
