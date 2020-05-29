Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174F51E82BB
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 18:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OARtM95H7wbzem2HNxxgAQ9lZVLvD9mEGif2pVad7Rw=; b=vCH
	7OHtLdQPU82zVHMhAWezUv6rE86i0HWdD5BRDBQyERzvR3PF2ZmGnbQ3yTnnvxA+Y849J+jivjuAz
	VNhdmX7zzDIMY8puNaPmAW2M5+5PN3nwefRWZXkGc13a9SEEGzJM7KipTSv4DiLhP8m1RzP2FBEFP
	6IAZV3DFbaJptEqc2sDeutMyQPfteC1i6/SsWDOG1ucwnBai7NCp/Jb7223ELjCQUzuyVBD+aiIX9
	ltrn4wZ0P8E0+xxeFKXKrS0WTlLffSyR0IvF79upJ09BT9yN5qvh0UYXgkHj88xNIs/In3KBhMmRe
	7WIG5sRVULlY5jg1+zovLv9cEkreKlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehQh-0000Oy-VR; Fri, 29 May 2020 16:00:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehQL-0000OK-SG
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 15:59:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id t18so4258622wru.6
 for <linux-mtd@lists.infradead.org>; Fri, 29 May 2020 08:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=jPExNZM3mmX+1Ih8VVxmCh7AFIrM8pkRXK2ZyryZhKI=;
 b=W/kf/0RA50wsUdcUqjkxfAgcEyK/vPduJ7PaG6dog01b3p/iv016KPI+BcdZRp8i6e
 o0pdaCgNBNv5VewNcYy93nodAxddc3UO1Ay+Bc3lH/xVIGHUdIcDZOd5ObBsJYXDyqIu
 stwUQ1WFHS873G8WuRdWGJ0SDXG8WW5hTjIwkdXlElsv1cEXpbKc3G5kmBJm+Nsa8W5Z
 LxovpUr/FKo/SPnpGhVMJOu4H4yBLcq9EBIC9+Jjc9CChk1BXoSRK93q3iT5XsgCgOO0
 UlUt+CBbzmo0oHh9Hl0ThmBDe1hDRV+RlxCT1YcjPtCyH8BRrWKuWtyahk88gsDkaY+2
 6R1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=jPExNZM3mmX+1Ih8VVxmCh7AFIrM8pkRXK2ZyryZhKI=;
 b=DMg0+/amdI/IV/BvBqkfDYE97KmfONDsjo2cTrvr+CBQ/AhodjsMhGYolJOLuwKPI3
 qulj1fn8eVs2o1OtnOaIEPcdcaPCiNX/lK/hJGcKpPrU/eryxhICOVyP2JoJ1nZ6l9Ah
 N8blHmqjZEzAZwLNVcqbT/pijNZBPpGaWm2YvXCfD6+CpQFsRxxPsXvX56/yqeu7PFaD
 9DxQt5DVY/+tYWvY1RcZAh4Cdk0aB3Vlm9l65JiW3hrB+HwEZfeB852ygcrXzoKOozqs
 I8v9LlWQPgzANb5jVeGeH6/2mO2MTrm+MENumfSDe8mFQU3VhSxsxg/Dzdq9AlQjMoru
 02mw==
X-Gm-Message-State: AOAM530W8itW/nvCeI7vVaiwM8ODSG9zzOA+0j117aj3xNhBC9jpQ3q8
 QrNa+5nCloskyeMYzFKW+skRnF+9gHEz1wkD3QI=
X-Google-Smtp-Source: ABdhPJwixhDXU5R0m3mEo1A3b04+x/807HxN4wYeI9e0++4jrX9MdqoKgY7faqni8qgrD+kx8BSKk6qeBCtzDB/Ng58=
X-Received: by 2002:a05:6000:1202:: with SMTP id
 e2mr8966662wrx.231.1590767995405; 
 Fri, 29 May 2020 08:59:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:f3c7:0:0:0:0:0 with HTTP; Fri, 29 May 2020 08:59:54
 -0700 (PDT)
From: baco uche <bankbankb38@gmail.com>
Date: Fri, 29 May 2020 16:59:54 +0100
Message-ID: <CAHJX93Yj_BsbaNt13GjiD0_FvLMTUkdFh52irX7tw27g4rVSUQ@mail.gmail.com>
Subject: Eid Mubarak,
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_085957_928978_2EA1BDC7 
X-CRM114-Status: UNSURE (  -4.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.5 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [bankbankb38[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bankbankb38[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.5 HK_SCAM                No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLY         From and body contain different freemails
 0.0 XFER_LOTSA_MONEY       Transfer a lot of money
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 2.0 FILL_THIS_FORM_LONG    Fill in a form with personal information
 0.0 MONEY_FRAUD_8          Lots of money and very many fraud phrases
 0.0 FORM_FRAUD_5           Fill a form and many fraud phrases
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

QXNzYWxhbSBhbGFpa3VtLAoKSSBhbSBhbiBhY3RpdmUgYmFua2VyLCAgSSBzYXcgeW91ciBlbWFp
bCBhZGRyZXNzIHdoaWxlIGJyb3dzaW5nCnRocm91Z2ggdGhlIGJhbmsgRFRDIFNjcmVlbiBpbiBt
eSBvZmZpY2UgeWVzdGVyZGF5LiBub3cgIEkgYW0gaW4gYQpiZXR0ZXIgcG9zaXRpb24gdG8gdHJh
bnNmZXIgYWJvdXQgJDguMyBtaWxsaW9uIFVTIERvbGxhcnMgaW50byBhCmZvcmVpZ24gYWNjb3Vu
dC4gSWYgeW91IGFyZSB3aWxsaW5nIGFuZCBjYXBhYmxlIHRvIHdvcmsgd2l0aCBtZSB0bwpyZWNl
aXZlIHRoaXMgZnVuZCBpbnRvIGEgcGVyc29uYWwgb3IgY29tcGFueSdzIGFjY291bnQsIEkgd2ls
bCBnaXZlCnlvdSB0aGUgZnVsbCBkZXRhaWxlZCBpbmZvcm1hdGlvbi4gTm8gcmlzayBpcyBpbnZv
bHZlZCBhcyBpdCB3aWxsIHBhc3MKdGhyb3VnaCBub3JtYWwgYmFua2luZyBwcm9jZWR1cmVzLgoK
SGVuY2UsIEkgYW0gaW52aXRpbmcgeW91IGZvciBhIGJ1c2luZXNzIGRlYWwgd2hlcmUgdGhpcyBt
b25leSBjYW4gYmUKdHJhbnNmZXIgdG8geW91ciBhY2NvdW50IHdoaWNoIHdlIHdpbGwgc2hhcmVk
IGJldHdlZW4gdXMgaW4gdGhlIHJhdGlvCm9mIDUwJSBmb3IgbWUsNTAlIGZvciB5b3UgYW5kIGJv
dGggb2YgdXMgd2lsbCBzaGFyZSBhbnkgZXhwZW5zZXMgdGhhdAp3aWxsIGNvbWUgZHVyaW5nIHRo
ZSByZWxlYXNlL3RyYW5zZmVyIGZyb20gb3VyIGJhbmssIGlmIHlvdSBhZ3JlZSB0bwpteSBidXNp
bmVzcyBwcm9wb3NhbC4gRnVydGhlciBkZXRhaWxzIG9mIHRoaXMgRnVuZCByZWxlYXNlIGFuZAp0
cmFuc2ZlciB3aWxsIGJlIGZvcndhcmRlZCB0byB5b3UgYXMgc29vbiBhcyBJIHJlY2VpdmUgeW91
ciBkZXRhaWwKTWFpbC4KCjEpWW91ciBGdWxsIE5hbWVzLiAoMilZb3VyIGNvdW50cnkuICgzKVlv
dXIgVGVsZXBob25lCig0KVlvdXIgT2NjdXBhdGlvbiAuKDUpWW91ciBBZ2UuICg2KSBZb3VyIGZ1
bGwgQWRkcmVzcy4KSSB3aWxsIHVzZSB0aGVzZSBkZXRhaWwgaW5mb3JtYXRpb27igJlzIHRvIGZp
bGwgYSByZWxlYXNlL3RyYW5zZmVyIGFuZAphcnJhbmdlIHNvbWUgZG9jdW1lbnRzIG9uIHlvdXIg
YmVoYWxmIGluIG91ciBiYW5rIGhlcmUgYXMgdGhlCmJlbmVmaWNpYXJ5IG93bmVyIG9mIHRoaXMg
ZnVuZCBhYmFuZG9uZWQgaW4gb3VyIGJhbmsKClBsZWFzZSBjb250YWN0IG1lIHRocm91Z2ggbXkg
cHJpdmF0ZSBFbWFpbDphbGhvdXR0dGFAZ21haWwuY29tCgpUaGFua3MKQWxoIElkcmlzcyBBa2lt
IE91dHRhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
