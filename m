Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 259A1AB704
	for <lists+linux-mtd@lfdr.de>; Fri,  6 Sep 2019 13:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piy9KsLu2PFsPEN9zYlcPIapuulqemVNmEjY3zjFtSI=; b=IZGB8N0F6RIKqj
	G5avcnCwzAR0ZiTwwp7kqQmuB7+3NSrWlC30b+s+99tcpgDsM0LfEN2Al1kIcce/CEg1y4CEFT/J3
	oR1K0Dx3EnUiFONieHtuVp0xME+M6z+Be/7nhz8pJPW+mj57ZAEzGp8OhggXpPh4NHyejiG6dDPGm
	//qeiGuqiUoufY5hI8uPCQ0wXvUPnKGinorDwyatePz+LuhIymWzKm8+fFY7bEeCLtSPgy+ZABA38
	fGiXdqE4takYPg0xl6MVTVf3zm1PuwbOTYNBkUAXOlfXRIYq+BEWxmGjexAgyI6DdOkhKD8ie5cUr
	wiUzqwPNtgHFyJuJrqDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6CG3-00089f-Vs; Fri, 06 Sep 2019 11:18:28 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6CFx-00088v-Iw
 for linux-mtd@lists.infradead.org; Fri, 06 Sep 2019 11:18:22 +0000
Received: by mail-io1-xd2f.google.com with SMTP id x4so11778060iog.13
 for <linux-mtd@lists.infradead.org>; Fri, 06 Sep 2019 04:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BqOPj6U9cBZsPbI2ofifRugpVLqTk3OINwa4TOXQAwc=;
 b=b/WdBWyDQvwBNVcDT3PvTDmcw/AVu1JObk5G9F77l4Onj0x5uV7f0htxFrW8cu0CpD
 GR+860ly/7Y76eGZaavgrDyPXnvucDMgahUvl6cTEfxlvVTGNkBWVqMCw8ulSRxRAbvD
 6sH/ENhDqju8w5Y3CNwaGcfg2mOF/NPSx6jfGpR1u6l/qhYKHhlR1laMe6TQoWViVPaK
 3plyn8YqyxnWNANTDiQwqj4kqKn+M9FinzYp5T4XilYslSIhYidXvMdA0/3WocDD0qK7
 t2EKXbj6VVYiBceUqTN8K4fkKFO0LFMOcPIFGGfq09HSWFswlfBgVp3TH6uGB+35Klji
 n8YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BqOPj6U9cBZsPbI2ofifRugpVLqTk3OINwa4TOXQAwc=;
 b=XnVyReUtl3jQadyuAc0kIyQED7RLusnvGTXdKYyDpWkSXAZ+ZQI9r6jtANNnlzP31l
 MsTSA9O2sHG9PypC83N9ATK9Vc0YlxZpvd1Qz+jXeIoEhKzWhZGUCbgkXmoVIqTh9hl+
 843X203osKB975R8/bvWF8dxRZI9n0LDnpK4ZGtLu58lzd3xpOxmD9DmK5ZG8aCUSu85
 /OiiPUGGLjUnATDp7nrJqlcClw83zYQIVNZPEHK1uV/gCYYsX2nckTfDzNY63A96nD4O
 Q6r+0GfvahtK/AgtNoyVw7RKGRmrVCYkbiGEwdC2iNsWtAm/RwHAp9IwOZgOmtgz1wKw
 I2cQ==
X-Gm-Message-State: APjAAAVoJduQQbN5Y751zD/uJVmZZqC4juNVnj+gtG0EwO0EJHjbcpp4
 HCAfqgp0OcGY611F2qVebi8bRCycKSkNhaYLUW4JEqe4
X-Google-Smtp-Source: APXvYqwJHCDapuhfovxaW7L4MjztdaMA5DJzcpzgCLQ4s1Dmgj/KZ3UAdb75yO7ECzZfJQiduwvYx0+1hOjUuscIssc=
X-Received: by 2002:a6b:ec18:: with SMTP id c24mr9794034ioh.72.1567768696962; 
 Fri, 06 Sep 2019 04:18:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP;
 Fri, 6 Sep 2019 04:18:16 -0700 (PDT)
In-Reply-To: <131148461.92686.1567753326360.JavaMail.zimbra@nod.at>
References: <CAA=hcWTrrC1a_WSNb62ftn60fAMnq1jywVsjwess1=vGufXjLw@mail.gmail.com>
 <CAFLxGvzqXs=m77Dmp+EVxYKM4gWc4AcU1ftW+S90rVtot1NvPg@mail.gmail.com>
 <CAA=hcWT0=ny6hxDgxZVTU6jbAYS80nizw3+PVVWzgW6poXuMwQ@mail.gmail.com>
 <131148461.92686.1567753326360.JavaMail.zimbra@nod.at>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 6 Sep 2019 21:18:16 +1000
Message-ID: <CAA=hcWS4C3k0XbinsWvPLJ9KofLJTDakmGPydtDrenNv=xoizg@mail.gmail.com>
Subject: Re: A big issue of NAND fragmentation
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_041821_651688_AD42EC70 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jupiter.hce[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gOS82LzE5LCBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0PiB3cm90ZToKPiAt
LS0tLSBVcnNwcsO8bmdsaWNoZSBNYWlsIC0tLS0tCj4+IFZvbjogIkpIIiA8anVwaXRlci5oY2VA
Z21haWwuY29tPgo+PiBBbjogIlJpY2hhcmQgV2VpbmJlcmdlciIgPHJpY2hhcmQud2VpbmJlcmdl
ckBnbWFpbC5jb20+Cj4+IENDOiAibGludXgtbXRkIiA8bGludXgtbXRkQGxpc3RzLmluZnJhZGVh
ZC5vcmc+Cj4+IEdlc2VuZGV0OiBGcmVpdGFnLCA2LiBTZXB0ZW1iZXIgMjAxOSAwODowMzo1NQo+
PiBCZXRyZWZmOiBSZTogQSBiaWcgaXNzdWUgb2YgTkFORCBmcmFnbWVudGF0aW9uCj4+Cj4+IFll
cywgSSB1c2UgVUJJRlMsIHdhcyB5b3VyIHdvcmQgImZvcmNlIiBtZWFucyAid3JpdGUiIG9yIGRp
ZCB5b3UKPj4gYWxsdWRlIHRoZXJlIHdvdWxkIGJlIGFuIGFsdGVybmF0aXZlIHRvIGF2b2lkIGZv
cmNpbmcgVUJJRlMgcGVyc2lzdAo+PiAyNTAgYnl0ZXM/Cj4+Cj4+IFdhaXRpbmcgZm9yIG91dCBv
ZiBzcGFjZSB3b3VsZCBiZSB0b28gcmlzaywgYWx0ZXJuYXRpdmVseSwgSSBzaG91bGQKPj4gaGF2
ZSBhIFVCSUZTIHBhcnRpdGlvbiBmb3IgdGhlIGRhdGEgc3RvcmFnZSwgaWYgaXQgcnVucyBvdXQg
b2Ygc3BhY2UsCj4+IGl0IHdvbid0IGltcGFjdCB0aGUgcm9vdCBmaWxlIHN5c3RlbS4KPj4KPgo+
IE5vLCBieSBmb3JjZSBJIG1lYW4gZm9yY2luZyB0aGUgZmlsZXN5c3RlbSB0byBwZXJzaXN0IHRo
ZSBkYXRhLgo+IEZvciBleGFtcGxlIGJ5IHVzaW5nIGZzeW5jKCksZmRhdGFzeW5jKCksIE9fU1lO
QyBvciBhIHN5bmMgbW91bnRlZAo+IGZpbGVzeXN0ZW0uCj4gSWYgeW91IGRvbid0IGRvIHRoaXMs
IGRhdGEgd2lsbCBiZSBjYWNoZWQgYW5kIGNhbiBiZSBwYWNrZWQKPiBsYXRlciB1cG9uIHdyaXRl
LWJhY2suCgpJIHVzZSBzdGQ6Om9mc3RyZWFtIGFuZCBvcGVyYXRvcjw8LCBpdCBkb2VzIGhhdmUg
YSBmbHVzaCBidXQgSSBkb24ndAprbm93IGlmIHRoZSBmbHVzaCBpcyBhIGRlZmF1bHQgc2V0dGlu
ZyBvciBub3QsIGJ1dCBvYnZpb3VzbHkgaXQgaXMKZGVmYXVsdCB3aGljaCBjYXVzZWQgZnJhZ21l
bnRhdGlvbi4gTW9yZSB3b3JrIHRvIGRvLCBtaWdodCBiZSBiZXR0ZXIKdG8gdXNlIGFuIG9sZCBz
aW1wbGUgQyB3cml0ZS4KClRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLgoKLSBqdXBpdGVyCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
