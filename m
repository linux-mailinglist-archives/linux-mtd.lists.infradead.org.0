Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ED312353A
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Dec 2019 19:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X2lJ9TSmeUr7lbCf7qLgKp5xTEkvwRzUtt5BPMAf9FE=; b=cCz22XKkzEUZBe
	xVN3j9JLpN+Y0wSJsiBhCsY/YlKdJHZzWIunfpxYt40RGrwDwIqbCnpmtw7DHPmGRgUY46wBg+P49
	5X/Q+FNcXbj7zGW6J2hxCy9+XChWKjIDXcX0s9yX/MsNbMmTGt6kqEmFWnkQfNKf834FkRLkhdaum
	wnAJDr9j4idHmb20ykyhNg4mw6sQv+v0RP26qBvvkAHMZVjrMiXMpp/R6eIlj1Lnt1UVQMvr9nc2V
	lTSuYc4xxCkZi6/b+nh2GbzdlKE+Pe8hrRVm/WRTKFbP+kKjIpMRRi9eunPP+tYwxl6h2EHsioWWz
	XArOkZzhSNGs4JWTE3yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHrR-0000AO-N8; Tue, 17 Dec 2019 18:46:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHrK-0008Sq-NG
 for linux-mtd@lists.infradead.org; Tue, 17 Dec 2019 18:46:15 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C688F20733;
 Tue, 17 Dec 2019 18:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576608371;
 bh=8cTPAJdBPTsQ48Rtaj+AtGz744Volp3zu/XplimkmTE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KV14Yv630RBT6HY1Vbkz5YQvSNEqJjx93wxbveUJ7sFbdN18dlV35lX+b5kH97ipO
 dG9UfTRb44j+7Rn9ArllKEA02K6y/8z19yUtuUC2v0qOl2v+ZfUOO83erVE5jlZxAF
 1L+Z80x5fPIq1e7MX10MhAFpr00wPi6YErtj/Fk0=
Date: Tue, 17 Dec 2019 10:46:09 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH 1/2] ubifs: fix FS_IOC_SETFLAGS unexpectedly clearing
 encrypt flag
Message-ID: <20191217184608.GB89165@gmail.com>
References: <20191209222325.95656-2-ebiggers@kernel.org>
 <20191216150636.0511E2072D@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216150636.0511E2072D@mail.kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_104614_780995_CBE0DB4B 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -3.4 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Richard Weinberger <richard@nod.at>, stable@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, linux-mtd@lists.infradead.org,
 Hou Tao <houtao1@huawei.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gTW9uLCBEZWMgMTYsIDIwMTkgYXQgMDM6MDY6MzVQTSArMDAwMCwgU2FzaGEgTGV2aW4gd3Jv
dGU6Cj4gSGksCj4gCj4gW1RoaXMgaXMgYW4gYXV0b21hdGVkIGVtYWlsXQo+IAo+IFRoaXMgY29t
bWl0IGhhcyBiZWVuIHByb2Nlc3NlZCBiZWNhdXNlIGl0IGNvbnRhaW5zIGEgIkZpeGVzOiIgdGFn
LAo+IGZpeGluZyBjb21taXQ6IGQ0NzVhNTA3NDU3YiAoInViaWZzOiBBZGQgc2tlbGV0b24gZm9y
IGZzY3J5cHRvIikuCj4gCj4gVGhlIGJvdCBoYXMgdGVzdGVkIHRoZSBmb2xsb3dpbmcgdHJlZXM6
IHY1LjQuMiwgdjUuMy4xNSwgdjQuMTkuODgsIHY0LjE0LjE1OC4KPiAKPiB2NS40LjI6IEJ1aWxk
IE9LIQo+IHY1LjMuMTU6IEJ1aWxkIE9LIQo+IHY0LjE5Ljg4OiBCdWlsZCBmYWlsZWQhIEVycm9y
czoKPiAgICAgZnMvdWJpZnMvaW9jdGwuYzoxMzA6Mjg6IGVycm9yOiDigJhVQklGU19TVVBQT1JU
RURfSU9DVExfRkxBR1PigJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24p
Cj4gCj4gdjQuMTQuMTU4OiBCdWlsZCBmYWlsZWQhIEVycm9yczoKPiAgICAgZnMvdWJpZnMvaW9j
dGwuYzoxMjc6Mjg6IGVycm9yOiDigJhVQklGU19TVVBQT1JURURfSU9DVExfRkxBR1PigJkgdW5k
ZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pCj4gCj4gCj4gTk9URTogVGhlIHBh
dGNoIHdpbGwgbm90IGJlIHF1ZXVlZCB0byBzdGFibGUgdHJlZXMgdW50aWwgaXQgaXMgdXBzdHJl
YW0uCj4gCj4gSG93IHNob3VsZCB3ZSBwcm9jZWVkIHdpdGggdGhpcyBwYXRjaD8KPiAKCjQuMTkg
YW5kIDQuMTQgd2lsbCBidWlsZCBpZiB5b3UgYXBwbHkgY29tbWl0IDJmZThiMmQ1NTc4ZAooInVi
aWZzOiBSZWplY3QgdW5zdXBwb3J0ZWQgaW9jdGwgZmxhZ3MgZXhwbGljaXRseSIpIGZpcnN0LgpU
aGF0IHdhcyBhIGJ1ZyBmaXggdG9vLCBzbyBJIHJlY29tbWVuZCBhcHBseWluZyBpdC4KCi0gRXJp
YwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
