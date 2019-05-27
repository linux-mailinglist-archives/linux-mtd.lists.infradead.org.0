Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ABD2AFD4
	for <lists+linux-mtd@lfdr.de>; Mon, 27 May 2019 10:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NQeqvePS1oYD+ht+IipnXMhlvHoyKVATkcdVHIH5qc0=; b=MnilTg+LlU8fBi
	w1ciX+aBT5VN9013nXp0A6z4uH1BoNk6gb/z+O2EjZSQX5M9lA2EllOVsgnTBUWpNF6q3iiga9+5s
	NHJxqyHKPSTl63t6/Fkc3MfT+O5d3GDtOwWtOeBwd5jch7SHL2vf1SsjH5GqjnzxGr9iLoPfuLFF4
	1F2CvCqpDwLEdhbWwUFazvU6G8Oa3NV+9eObCwjCY1FmZZ3Tpa2NavtGy2THmAnwv5yfqIbmwrz2b
	0dN/UpABODcNDXgIdk6vHH7Oxzgq0BQE/wZli6uKo8dxdtI0k0mfwvSybkbXl4mkwRDe9ad9NA7pc
	IFecel5duO2vAMKA/GsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAmr-0006YQ-QX; Mon, 27 May 2019 08:15:17 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAmk-0006FN-Av
 for linux-mtd@lists.infradead.org; Mon, 27 May 2019 08:15:11 +0000
Received: by mail-io1-xd43.google.com with SMTP id f22so12559144iol.11
 for <linux-mtd@lists.infradead.org>; Mon, 27 May 2019 01:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gM7KQfbz3ZyixRK5sAsCDT1jNQL5UcR9ighEfwJITVE=;
 b=UUXKAo3EwDcyOBgpW/cdYFjuiV0+E7ZBogWxTQRORkhYpHif86Xny2cD6t/jyyVUWE
 5/hBAZoe5ag+verhXaRb03JBhQC4FIiuy7APXvqKH+GxvMBI5+GM3ClP/l3UG3rjaLOC
 Tm18N8ecUA9xArM8Z37oYr3gOt48MJiTuq0pkoTIITApq/FpKlVcRtNSiTGsAT8J0Fh7
 hX4QZN4HkmPA+OfjYMw9IOd6LgjvSrexj6f3akGrWvWePjTrfbGAutjoFORjbyv+hPPp
 DJgVv/wjgwWCv7XmACOzbFMmxe1j9SV+MsplnkbxrgXcROFNPq7gyqcjejzd+vn0CMd5
 bYLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=gM7KQfbz3ZyixRK5sAsCDT1jNQL5UcR9ighEfwJITVE=;
 b=KrozrUVLQz9XtEvTTWNCPq2gmw5rm/xUbpukb7qLG2EDSVy05VsutrkKFg+807jmhq
 JxAFWrB+zMPHpWiAUbwOJuryGkruLGHeQ3qNl7mtp94dNzwVJ6McFiihf5OOIe4cEX+1
 6EAQEFrkSn0t0De4lOdYgigU2KNzzSTrU/qBqQrsRB4MANad/GxUJeTboSnlu8Ak5g4r
 kiePKDGXYRayxonKyqhGGg15NDW3Nu0zp8C62Xg9BctBHwLzJ15OLZlSOoGKh/EGxnY0
 BvlkgiHfoauEDe6GIpAhspYMoib4vJQjJBVRvn7Hp+1Zy08NWsLgp8zRC6/3hKS5i1lN
 mxuw==
X-Gm-Message-State: APjAAAV5H0zqk68xuh6KMN4MOID5I1JMaX5JrX/wLLkVWsLoEt0XVvq/
 MCmcIaKGPLjXgVHfLwzu5AYyla1pF73ET8wDZsE=
X-Google-Smtp-Source: APXvYqzOXIJVvfmI0HKKh4wXvvXsSZ4opC10EXWomXm0j+5Ci/PFfPLwMJSwNnmaOp8Fjwr+DFDuABPkbPjW0BPndT4=
X-Received: by 2002:a5d:9616:: with SMTP id w22mr6319971iol.40.1558944908506; 
 Mon, 27 May 2019 01:15:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:d00f:0:0:0:0:0 with HTTP; Mon, 27 May 2019 01:15:07
 -0700 (PDT)
From: PEREZ PAULETTE <perezpaulette5@gmail.com>
Date: Mon, 27 May 2019 09:15:07 +0100
Message-ID: <CAAKr3SXj=UwtE=7KEDpdtm1tixJx9gv9KvezEFKSzbFmp4T_JQ@mail.gmail.com>
Subject: Re
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_011510_377911_A57A856C 
X-CRM114-Status: UNSURE (  -1.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (perezpaulette5[at]gmail.com)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (gsherri06[at]outlook.fr)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (perezpaulette5[at]gmail.com)
 0.9 URG_BIZ                BODY: Contains urgent matter
 0.0 T_DEAR_BENEFICIARY     BODY: Dear Beneficiary:
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.4 FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
 0.0 MONEY_FORM_SHORT       Lots of money if you fill out a short form
 0.0 MONEY_FRAUD_5          Lots of money and many fraud phrases
 0.0 FORM_FRAUD_5           Fill a form and many fraud phrases
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Reply-To: gsherri06@outlook.fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VW5pdGVkIE5hdGlvbnMgTGlhaXNvbiBPZmZpY2UKNDA1IEVhc3QgNDJuZCBTdHJlZXQsIE5ldyBZ
b3JrLApOWSwgMTAwMTcsIFVTQS4KVGVsOiAoKyAxKSAoNjQ2KSA2MDEtNjU5NwpFbWFpbCAodW4y
MDE5QHVzYS5jb20pCgpPdXIgRGVhciAyMDE5IEJlbmVmaWNpYXJ5CgpUaGUgVW5pdGVkIE5hdGlv
bnMgaW4gY29vcGVyYXRpb24gd2l0aCBXb3JsZCBCYW5rIGhhdmUgYWdyZWVkIHRvCmNvbXBlbnNh
dGUgeW91IHdpdGggdGhlIHN1bSBvZiBPbmUgTWlsbGlvbiBUd28gSHVuZHJlZCBUaG91c2FuZCBV
UwpEb2xsYXJzICgkMS4yTSkgYWZ0ZXIgeW91ciBuYW1lIGFuZCBlbWFpbCB3YXMgc3VibWl0dGVk
IGJ5IHRoZSBJbnRlcm5ldApJbnRlcm5hdGlvbmFsIE1vbml0b3JpbmcgR3JvdXAgZHVyaW5nIHRo
ZSBVTkNDIENvbmZlcmVuY2UgTWVldGluZwp3aGljaCB3YXMgaGVsZCB0aGlzIDAxLzA1LzIwMTkg
ZWRpdGlvbiB3aXRoIFVOIFNlY3JldGFyeSBHZW5lcmFsCkFudMOzbmlvIEd1dGVycmVzIGluIEdl
bmV2YSBTd2l0emVybGFuZC4gVGhpcyBwYXltZW50IFByb2dyYW0gaXMKb3JnYW5pemVkIGZvciBj
aGFyaXR5IG9yZ2FuaXphdGlvbi9TY2FtIHZpY3RpbXMgYW5kIGRldmVsb3BtZW50LgoKWW91ciBu
YW1lIGFwcGVhcmVkIGFtb25nIHRoZSBiZW5lZmljaWFyaWVzIHdobyB3aWxsIHJlY2VpdmUgdGhl
CnN1bSBvZiAkMS4yVVNELCBDcmVkaXRlZCB0byBPbmxpbmUgQmFuayBBVE0gQ2FyZCBhY2NvdW50
IHRoYXQgd2FzIHNldAp1cCBmb3IgeW91IGluIHRoZSBCYW5rIGFuZCBpdCBoYXMgYmVlbiBhcHBy
b3ZlZCBmb3IgaW1tZWRpYXRlIGRlbGl2ZXJ5CnRvIHlvdS4KCllvdXIgdXJnZW50IHJlc3BvbnNl
IHRvIHRoaXMgZW1haWwgd2lsbCBoZWxwIGZhY2lsaXRhdGUgdGhlIG9ud2FyZApkZWxpdmVyeSBv
ZiB5b3VyIEFUTSBjYXJkIHRvIHlvdSwgQ29udGFjdCBEZWxpdmVyeSBvZmZpY2VyIE1yLiBMYXJy
eQpXYXluZSBFLW1haWwgKCBvZmlsZTE2MEBvdXRsb29rLmNvbSApIFBob25lICsyMjktOTgxMTkx
NTcuCgpTZW5kIHRvIEhpbQpZb3VyIEZ1bGwgTmFtZSwgQWRkcmVzcywgVGVsOk5vLCBBbmQgQSBz
Y2FuIENvcHkgT2YgWW91ciBJZGVudGlmaWNhdGlvbgoKVGhhbmtzLApQRVJFWiBQQVVMRVRURQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
