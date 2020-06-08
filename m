Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF1A1F1849
	for <lists+linux-mtd@lfdr.de>; Mon,  8 Jun 2020 13:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DqbQE/n2RkS6bfyYUqVa5Hn0nSFgA3u6Z8iUCQ2DpKQ=; b=AQ+vC3ys5pVTVk
	lV1784FTimxvrk2ZLeBhEKEejTHmsQ+PsA7We/OqfvGrbyaj5AUYpTOIvJQjGagVHVd+nEHq4bbxJ
	BWIRJt4k3R+T7F/wM9kW8PSzkq9bhsPtuu9TBelqezwlJ+x2MEG1uF+s7GmM6OZlq8NPpotrm/iQT
	btLn8gggSQTWFKAZS5/WB9iCWh3Ic7Nmmeu4clb/BRT1NHjsx75+pnkxqYCbETAr/I5UX/WrL1BM8
	BckGzY7kqzy0L8yR5KRHeDrbbYhII7YJBCnfvJWuoep+Mhf34rIlQGc/7kdhKTReBZMRj83l/dmWG
	dTX7tVQDghsovf/kaA3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiGNN-0006FI-Ct; Mon, 08 Jun 2020 11:55:37 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiGNF-0006Eo-2i
 for linux-mtd@lists.infradead.org; Mon, 08 Jun 2020 11:55:30 +0000
Received: by mail-lf1-x143.google.com with SMTP id j12so10023557lfh.0
 for <linux-mtd@lists.infradead.org>; Mon, 08 Jun 2020 04:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=5mSqmXOzjDhWVi9ac6qJDpYRiKhmA/3B9Ie+LL65UlA=;
 b=FcT9oWy7oyZ7jAu32kyAjqYeJ1Nm7LuUMYJggA0hHcGyNdJeo7DxtouSR3k9hmx318
 8/aD713gZBGdozpc2UNo8MGsTgIVVBaRjj499H5PqqmeEQXLq70rH/vdLWqD2+ou+Xcv
 45z7fU4L8qQtOdjA44+WYs8xZoMOT5nzQVFgsCXpacNuqWcfqBhddaVCHwPzNJN/kd70
 UqY0JgMAZIRcn+80Dn7gA6zRJq0eGGG1EhqnmutQigmWMVXsZ1pmVEKMH+nGoGTLFabL
 1LWpNzcUgxtuPPmRdq2JVnpJ/3MlFwWlmVIiMpmxhkryl253f/kl3/uJrXQ9G7vzf7dI
 oztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=5mSqmXOzjDhWVi9ac6qJDpYRiKhmA/3B9Ie+LL65UlA=;
 b=GT98wNH3FG0OqaEPEeOMoEmYAdGRlpm1jiu6zvHBpKATDbKHC/EEJb0ACGrQyZTA04
 N4yV9VbGwpkHHx/5beUAxjo/05FI+Q5Ix0iJjWmcOHRd7w+2h0eLMqdtW+nDyqx2O8vl
 Rxm5NZuMD0WeNSEGQxYwww7fALuGFyHqi8Gwe0bkax7Z4VBJUWYhwxUHoHGHqnzSgDX6
 2LqTCsuLqzmAXGelB4AaAip7rTy2eMLwfSlwt95OeVgipCZYwj5k6gfknugiKMVqPjHh
 KDAW8TXxfg6iMlVap5t6nxXlprN/Xtu+eqkdWjFFXOWZPWl0+NiB24v5jRrfzrredR6H
 PS4w==
X-Gm-Message-State: AOAM530q/HglRHXq+F0EG4fT9J8CVz+Osq0MW16UTtyj7B9L9HZd+a4R
 TrQRVxWCXAWsBjBt4Ucm4eOm+E0mCrLBYY8LNwY=
X-Google-Smtp-Source: ABdhPJwg4OXWqJpgNEJf1zfsJgpmK6KXkq+mcQsIAwm636JysWLhhQdTUEwPGmuYnZCNWcxIX/8ur0LQLPclMf6wXLE=
X-Received: by 2002:a19:c3c5:: with SMTP id
 t188mr12506371lff.149.1591617326847; 
 Mon, 08 Jun 2020 04:55:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:585b:0:0:0:0:0 with HTTP;
 Mon, 8 Jun 2020 04:55:26 -0700 (PDT)
From: Vernitha Maynard <sousah.fatou@gmail.com>
Date: Mon, 8 Jun 2020 11:55:26 +0000
Message-ID: <CAJ7hs0403h4fXA6aAu6MJfM5U5PU895gUgndE=4a8Zi1oqB8ow@mail.gmail.com>
Subject: Greeting,
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_045529_119202_2F7A6A20 
X-CRM114-Status: UNSURE (  -4.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sousah.fatou[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
 0.0 MONEY_FRAUD_3          Lots of money and several fraud phrases
 1.7 ADVANCE_FEE_2_NEW_MONEY Advance Fee fraud and lots of money
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
Reply-To: mrs.vernitha.maynard@mail.bg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

TXkgRGVhciwKCldpdGggd2FybSBoZWFydCBJIG9mZmVyIG15IGZyaWVuZHNoaXAsIGFuZCBteSBn
cmVldGluZ3MgdG8geW91IGluIHRoZQpuYW1lIG9mIG91ciBsb3JkLCBhbmQgSSBob3BlIHRoaXMg
bGV0dGVyIG1lZXRzIHlvdSBpbiBnb29kIHRpbWUsIEkKUHJvcG9zZSB3aXRoIG15IGZyZWUgbWlu
ZCBhbmQgYXMgYSBwZXJzb24gb2YgaW50ZWdyaXR5IGZyb20gR29kLCBJCmtub3cgdGhhdCB0aGlz
IG1lc3NhZ2Ugd2lsbCBhcHBlYXIgYXMgYSBzdXJwcmlzZSB0byB5b3UgdGhhdCB3ZSBiYXJlbHkK
S25vdyBidXQgdGhlIGdyYWNlIG9mIEdvZCBkaXJlY3RlZCBtZSB0byB5b3UgYW5kIEkgd2lzaCB5
b3UgcmVhZCB0aGlzCm1lc3NhZ2UgYW5kIGJlIGJsZXNzZWQgaW4gbmFtZSBvZiB0aGUgTG9yZC4K
CkkgaGF2ZSBhIGJyYWluIHR1bW9yOyBJIHN1ZmZlciB0ZXJyaWJseSBhdCB0aGUgbW9tZW50LiBN
eSBkb2N0b3IganVzdAppbmZvcm1lZCBtZSB0aGF0IG15IGRheXMgYXJlIG51bWJlcmVkIGJlY2F1
c2Ugb2YgbXkgaGVhbHRoIHRoZXJlZm9yZQpjb25kZW1uZWQgdG8gY2VydGFpbiBkZWF0aC4gQ3Vy
cmVudGx5LCBJIGhhdmUgZXhoYXVzdGVkIGFsbCBteSBzYXZpbmdzCmZvciBteSBtZWRpY2FsIGNh
cmUuCgpCdXQgSSBkbyBoYXZlIHNvbWUgZnVuZHMgZm9yIG15IGNoYXJpdHkgcHJvamVjdDsgdGhl
c2UgZnVuZHMgYXJlCmRlcG9zaXRlZCB3aXRoIG9uZSBvZiB0aGUgQmFua3MgaGVyZSBJbiBDb3Rl
IEQnSXZvaXJlIFdlc3QgQWZyaWNhLgpQdXJwb3NlZCBmb3IgY2hhcml0YWJsZSBmb3VuZGF0aW9u
LCBteSBtYXJpdGFsIHN0YXR1cyBpcyBzdWNoIHRoYXQgSSdtCnNpbmdsZSBiZWNhdXNlIEkgbG9z
dCBteSBIdXNiYW5kIG92ZXIgOSB5ZWFycyBub3cgYW5kIHVuZm9ydHVuYXRlbHkgd2UKaGF2ZSBu
b3QgaGFkIGEgY2hpbGQgdG9nZXRoZXIsIHdoaWNoIEkgYW0gbm8gb25lIHRvIGxlYXZlIG15IGxl
Z2FjeQpmb3IuIFRoZXJlZm9yZSwgdG8gcmVsZWFzZSBteSBmdW5kcyBJIHdvdWxkIGxpa2UgdG8g
bWFrZSBhIGRvbmF0aW9uIHNvCnRoYXQgdGhlcmUgaXMgbm8gc3RpZmYgdGF4IG9uIG15IG1vbmV5
LgoKVG8gdGhpcyBJIHdvdWxkIGJlIHNvIGdyYWNlZnVsIGFuZCBpbiBvcmRlciB0byBoZWxwIHRo
ZSBwb29yIHRvIGdpdmUKd2hhdCBhbW91bnRzIHRvIHNhaWQgbGVnYWN5IHdvcnRoIGZvdXIgTWls
bGlvbiBFdXJvcyAo4oKsNCwwMDAsMDAwLjAwCk1pbGxpb24gRXVyb3MpIHRvIGVuYWJsZSB5b3Ug
ZXN0YWJsaXNoIGEgY2hhcml0YWJsZSBmb3VuZGF0aW9uIGluIG15Cm1lbW9yeSBzbyB0aGF0IHRo
ZSBncmFjZSBvZiBHb2QgYmUgd2l0aCBtZSB1bnRpbCBteSBsYXN0IGhvbWUgc28gSSBjYW4KcmVj
ZWl2ZSBhbiBob25vcmFibGUgcGxhY2Ugd2l0aCB0aGUgTG9yZCBvdXIgZmF0aGVyLgoKSSBoYXZl
IG5vIGZlYXIgYmVjYXVzZSBiZWZvcmUgY29udGFjdGVkIHlvdSwgSSBoYXZlIHNldmVyYWwgbmln
aHRzCnByYXllZCBmb3IgdGhlIExvcmQgdG8gZ2l2ZSBtZSB0aGUgY29udGFjdCBvZiBhIHRydXN0
ZWQgcGVyc29uIG9mIHdob20KSSBjYW4gZW50cnVzdCB0aGlzIG1hdHRlciBhbmQgSSBiZWxpZXZl
IG15IGNvbnRhY3RzIHRvIHlvdSBpcyBkaXZpbmUuCgpLbm93IHRoYXQgeW91IGNhbiBrZWVwIDMw
JSBvZiB0aGUgbW9uZXkgZm9yIHlvdXJzZWxmIGFuZCB0aGUgcmVzdCB3aWxsCmJlIHVzZWQgdG8g
Y3JlYXRlIGEgY2hhcml0YWJsZSBmb3VuZGF0aW9uIGluIG15IG1lbW9yeSBhbmQgYQpmZWRlcmF0
aW9uIGluIHRoZSBmaWdodCBhZ2FpbnN0IGNhbmNlciBhbmQgYWxzbyBidWlsZCBvcnBoYW5hZ2Vz
LgoKSSBjb3VudCBvbiB5b3VyIGdvb2R3aWxsIGFuZCBlc3BlY2lhbGx5IG9uIHRoZSBwcm9wZXIg
dXNlIG9mIHRoZXNlCmZ1bmRzIGhhdmUgc29tZXRoaW5nIEkgZG8gbm90IGRvdWJ0IGJlY2F1c2Ug
SSBoYXZlIGdyZWF0IGNvbmZpZGVuY2UgaW4KeW91IHRoYXQgR29kIG1heSBndWlkZSBtZSB0b3dh
cmQgeW91LiAgTXkgZW1haWwKbXJzLnZlcm5pdGhhLm1heW5hcmRAbWFpbC5iZwoKCkF3YWl0aW5n
IHlvdXIgcHJvbXB0IHJlcGx5LCByZWNlaXZlIG15IGNvcmRpYWwgYW5kIGZyYXRlcm5hbCBncmVl
dGluZ3MuCgpZb3VycyBTaW5jZXJlbHksCk1ycyBWZXJuaXRoYSBNYXluYXJkCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRp
c2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbXRkLwo=
