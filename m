Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1636C1A65B8
	for <lists+linux-mtd@lfdr.de>; Mon, 13 Apr 2020 13:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wlRYBkyL/Lg5Ffo19E6LnvJmgviOvC7mGTwKY8LV7sU=; b=Ydkvprnzs2QBH+
	zaZRVgY6Yr1kFu3ojuZcCEGEhO2DgkoBgUNeTKGHJQz8OB+sr3hlJsRvA+OdlM1OnIpoziDlVD+GT
	w6Q0gkNmyh3FGWgaDA2fINXBWMBRMHLFP8EaEkFoxgEPCmS+6cIZQrT6gsLSieOZh2tGpD6cQbie7
	VFG3h/dzMlL0eDS5xyjgkD/kuGn+z+ppmMEhd9WV4VbNCYQtuPNRN5opiWcAErKjGI/anfN0U/MuE
	rmN0PRwDCk935fTGfMojlkLQOXEsUrTLWxiLsZ7oyStTDkTqxoIfFwZMq1uHWzBmSOzdZEIdl4Kpm
	AYZXz36jeBmt5dzGhO9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNxSw-000537-Gm; Mon, 13 Apr 2020 11:41:26 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNxSk-000505-I5
 for linux-mtd@lists.infradead.org; Mon, 13 Apr 2020 11:41:17 +0000
Received: by mail-il1-x136.google.com with SMTP id i2so7334933ils.12
 for <linux-mtd@lists.infradead.org>; Mon, 13 Apr 2020 04:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=qlKWExEze9qCqlwbpw1q4+d2Zjr4ETGVa64TcX+dTlk=;
 b=HxOaFJZljqXQIeSLw7dw+YeTIVe76Yo57NkC3rYQjPPsruaWLZEetJYgTw7mDA7iYw
 4KM/sQKuVdxfTyBgHy0QGrcgvhBAp/s2WR+7lhwMEms7c5U3ARzlxX4w9gHN6kyIVCTo
 InVjjBwajQbgYMLlLr/dGAnfAOq75HLmi2bmQShdg5UrDH6ZNHdmpjirCjsFE3E+W3lI
 4HPNdhIk9GHy3wOVy8qt79oLhQ3V0WJ+l2R8YfTk5No8OB207Mc1ssyzLdiNdU6iDIon
 HSnId1sWR9JHq8BkscMOY+TVCS7WuDDdfTSRJRDObUGUY3pKdsd/NGq97n4qtv5szVJr
 IEMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=qlKWExEze9qCqlwbpw1q4+d2Zjr4ETGVa64TcX+dTlk=;
 b=uoVcAKfGr9qNlJEzWMgUeBlU8W8BiKNeGSSQt0TvP62Hn2DnGBAVpQRI7KBs6LiJxo
 EnSwsDc0pY09OcmC7QFKSqoNulCm3mBoGWjeXC1Ar1VvYG4taUENHDGqQs2swqjchxPY
 YfNxH7M2bapfr4dxE8yxUjjrTf5/W3zMSD4M27yz2Ed5TNxPAm/jHkIWAhbrFY8AlDPp
 qM4FRevbIrc/M1xszB6tVL4EDXJ+zcnZQ+IcSFyR5rubZdGwaINwHx1oqYB1QbhiuvUT
 C2hKGtFBdpBtqJGHJ8MrGysH6Yq5U52Og8Cloik7ct3CYjlOMBPAp0/QyWE2ILhY8Dr5
 XGmQ==
X-Gm-Message-State: AGi0PuaKeSYKWjCSXXkWZDRSRZVFBK2cEH43Oh99ynZuidsFP6w/+gLB
 Tx4Ix4bjW9pBQ3hCTFmrHW+pSxrRat1cfyZhyQ==
X-Google-Smtp-Source: APiQypJ8Xf5JZIaJmuakcegBHklRN/w3ObzOY1fG2hZhiF0393fUgrxf6qaSVcLD5pLEm/4TEQgoj9oGK8tQ5EeyGAU=
X-Received: by 2002:a05:6e02:c8f:: with SMTP id
 b15mr14965961ile.35.1586778068198; 
 Mon, 13 Apr 2020 04:41:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:5e49:0:0:0:0:0 with HTTP; Mon, 13 Apr 2020 04:41:07
 -0700 (PDT)
From: Barrister Robert Richter UN-Attorney at Law Court-Benin
 <info.zennitbankplcnigerian@gmail.com>
Date: Mon, 13 Apr 2020 13:41:07 +0200
Message-ID: <CABHzvrm3rWryg1yAooKeHwdxzrKD47PRAEfC+ay1A6i5z3Wdiw@mail.gmail.com>
Subject: I have already sent you first payment US$5000.00 this morning through
 MONEY Gram service.it is available to pick up in address now.
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_044114_626308_89A68B27 
X-CRM114-Status: UNSURE (  -0.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [mgbenin903[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [info.zennitbankplcnigerian[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DEAR_BENEFICIARY       BODY: Dear Beneficiary:
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 HK_SCAM                No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.0 MONEY_FORM_SHORT       Lots of money if you fill out a short form
 0.0 MONEY_FRAUD_5          Lots of money and many fraud phrases
 0.0 FORM_FRAUD_5           Fill a form and many fraud phrases
 2.0 ADVANCE_FEE_3_NEW_MONEY Advance Fee fraud and lots of money
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
Reply-To: mgbenin903@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

QVRUTiBERUFSIEJFTkVGSUNJQVJZLgoKR09PRCBORVdTLgoKSSBoYXZlIGFscmVhZHkgc2VudCB5
b3UgZmlyc3QgcGF5bWVudCBVUyQ1MDAwLjAwIHRoaXMgbW9ybmluZyB0aHJvdWdoCk1PTkVZIEdy
YW0gc2VydmljZS5pdCBpcyBhdmFpbGFibGUgdG8gcGljayB1cCBpbiBhZGRyZXNzIG5vdy4KClNv
IHdlIGFkdmlzZSB5b3UgdG8gQ29udGFjdCBUaGlzIE1vbmV5IEdyYW0gb2ZmaWNlIHRvIHBpY2sg
dXAgeW91cgp0cmFuc2ZlciAkVVM1MDAwLjAwIHRvZGF5LgoKCk5vdGUgdGhhdCB5b3VyIGNvbXBl
bnNhdGlvbiBwYXltZW50IGZ1bmRzIGlzIHRvdGFsIGFtb3VudCAkVVMyLjgwMCwwMDAKTWlsbGlv
biBEb2xsYXJzLldlIGhhdmUgaW5zdHJ1Y3RlZCB0aGUgTW9uZXkgR3JhbSBBZ2VudCxNci4gSmFt
ZXMKR2FkbmVyIHRvIGtlZXAgc2VuZGluZyB0aGUgdHJhbnNmZXIgdG8geW91IGRhaWx5LCBidXQg
dGhlIG1heGltdW0KYW1vdW50IHlvdSB3aWxsIGJlIHJlY2VpdmluZyBldmVyeWRheSBpcyBVUyQ1
MDAwLjAwLiBDb250YWN0IEFnZW50IG5vdwp0byBwaWNrIHVwIHlvdXIgZmlyc3QgcGF5bWVudCAk
VVM1MDAwLjAwIGltbWVkaWF0ZWx5LgoKQ29udGFjdCBQZXJzb24sIE1yLiBKYW1lcyBHYWRuZXIs
IERpci4gTW9uZXkgR3JhbSBCZW5pbi4KRW1haWw6IG1nYmVuaW45MDNAZ21haWwuY29tClRlbGVw
aG9uZSBOdW1iZXJzOiArMjI5IDYyODE5Mzc4LyArMjI5IDk4NDc3NzYyCgpIRVJFIElTIFlPVVIg
UEFZTUVOVCBERVRBSUxTIEZPUiBUSEUgRklSU1QgwqNVUzUwMDAuMDAgU0VOVCBUT0RBWS4KClRy
YWNrIFZpZXcgV2Vic2l0ZSBsaW5rOgpodHRwczovL3NlY3VyZS5tb25leWdyYW0uY29tL3RyYWNr
ClNlbmRlcuKAmXMgRmlyc3QgbmFtZTogRGF2aWQKU2VuZGVy4oCZcyBMYXN0IE5hbWU6IEpvaW5l
cgpNb25leSBUcmFuc2ZlciBDb250cm9sIE51bWJlciAoTVRDTikgKFJFRkVSRU5DRSkjIDI2MDQ2
ODU2CgpDb250YWN0IHRoZSBNbW9uZXkgR3JhbSBVcmdlbnQgYW5kIHJlY29uZmlybSB5b3VyIGFk
ZHJlc3MgdG8gdGhlCm9mZmljZSBiZWZvcmUsIHRoZXkgd2lsbCBhbGxvdyB5b3UgdG8gcGljayB1
cCB0aGUgdHJhbnNmZXIgdG9kYXkuCgpIRVJFIElTIFdIQVQgUkVRVUlSRUQgT0YgWU9VLgoKWU9V
UiBGVUxMIE5BTUUtLS0tLS0tLS0KQUREUkVTUy0tLS0tLS0tLS0tLS0tCkNPVU5UUlktLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpURUxFUEhPTkUgTlVNQkVSUy0tLS0tLS0tLS0tLS0tLS0t
CgpOb3RlLCBJIHBhaWQgdGhlIHRyYW5zZmVyIGZlZSBmb3IgeW91LCBidXQgb25seSB5b3UgYXJl
IHJlcXVpcmVkIHRvCnNlbmQgdG8gdGhlIG9mZmljZSBpcyAkNzUgb25seSxCZWVuIFlvdXIgUGF5
bWVudCBGaWxlIGFjdGl2YXRpb24gZmVlLApTZW5kIG9uY2UgeW91IGNvbnRhY3QgdGhlIG9mZmlj
ZSxiZWZvcmUgeW91IGNhbiBhYmxlIHRvIHBpY2sgdXAgeW91cgp0cmFuc2ZlciB0b2RheS4KCkxl
dCBtZSBrbm93IG9uY2UgeW91IHBpY2sgdXAgZmlyc3QgcGF5bWVudCB0b2RheS4KCkJhcnJpc3Rl
ciBSb2JlcnQgUmljaHRlciBVTi1BdHRvcm5leSBhdCBMYXcgQ291cnQtQmVuaW4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQg
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tdGQvCg==
