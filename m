Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3505D17526D
	for <lists+linux-mtd@lfdr.de>; Mon,  2 Mar 2020 04:59:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GJSHrs+sjf9gRC0LysGUjDCgFJYVdNyILfMW/mqHfbI=; b=QVhjHu9hS/HVkAatsqgZRTf5o
	Baruh/EuBHsXGlUGQzoZ+B7vJUbPArGBHmSTMp7LjB3KWroSVaxff5hCeRiTDJ2QuZRsoV1+V84fp
	f50WcXb0QUK1ji5zR8utf/BNngir8Qw15aemikJqDf0DPoy0RBqVNeyeOGoLlKswViQdunmkyW+Te
	s/vZvGXzTnw30sp76gQAWXpYi911QkFjC3+zrAZXfEeIbhERrqPhy5krgi4EqqwWVBgxAxn8z6QWa
	IuUyB3f1H2QrHIIcRe4vn4a6gHn/1oWVDJzUJiw7qgEiB0/0gJA112VEE4IPSS/B8vE30/2fW9iiE
	PEJaj1U9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cEW-0004Cj-80; Mon, 02 Mar 2020 03:59:08 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cEL-0004Bq-6l
 for linux-mtd@lists.infradead.org; Mon, 02 Mar 2020 03:58:58 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 138C5119A387DF3CC13B;
 Mon,  2 Mar 2020 11:58:45 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.98) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Mon, 2 Mar 2020
 11:58:36 +0800
Subject: Re: [PATCH] ubifs: Don't discard nodes in recovery when ecc err
 detected
To: Richard Weinberger <richard.weinberger@gmail.com>
References: <1582293853-136727-1-git-send-email-chengzhihao1@huawei.com>
 <CAFLxGvyJdWcXQt3H2aknTuGhCJpV5YvAbW_wuHfs3m+KcNSjtw@mail.gmail.com>
From: Zhihao Cheng <chengzhihao1@huawei.com>
Message-ID: <58b11ca2-6b91-52b3-bc75-d44abb202cfb@huawei.com>
Date: Mon, 2 Mar 2020 11:58:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvyJdWcXQt3H2aknTuGhCJpV5YvAbW_wuHfs3m+KcNSjtw@mail.gmail.com>
X-Originating-IP: [10.173.221.98]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_195857_422828_C5BD2095 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 "zhangyi \(F\)" <yi.zhang@huawei.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

5ZyoIDIwMjAvMy8yIDQ6NDYsIFJpY2hhcmQgV2VpbmJlcmdlciDlhpnpgZM6Cj4gWmhpaGFvIENo
ZW5nLAo+Cj4gT24gRnJpLCBGZWIgMjEsIDIwMjAgYXQgMjo1NyBQTSBaaGloYW8gQ2hlbmcgPGNo
ZW5nemhpaGFvMUBodWF3ZWkuY29tPiB3cm90ZToKPj4gVGhlIGZvbGxvd2luZyBwcm9jZXNzIHdp
bGwgbGVhZCBUTkMgdG8gZmluZCBubyBjb3JyZXNwb25kaW5nIGlub2RlIG5vZGUKPj4gKFJlcHJv
ZHVjZSBtZXRob2Qgc2VlIExpbmspOgo+IFBsZWFzZSBoZWxwIG1lIHRvIHVuZGVyc3RhbmQgd2hh
dCBleGFjdGx5IGlzIGdvaW5nIG9uLgo+Cj4+ICAgIDEuIEdhcmJhZ2UgY29sbGVjdGlvbi4KPj4g
ICAgICAgMSkgbW92ZSB2YWxpZCBpbm9kZSBub2RlcyBmcm9tIGxlYiBBIHRvIGxlYiBCCj4+ICAg
ICAgICAgIChUaGUgbGViIG51bWJlciBvZiBCIGhhcyBiZWVuIHdyaXR0ZW4gYXMgR0MgdHlwZSBi
dWQgbm9kZSBpbiBsb2cpCj4+ICAgICAgIDIpIHVubWFwIGxlYiBBLCBhbmQgY29ycmVzcG9uZGlu
ZyBwZWIgaXMgZXJhc2VkCj4+ICAgICAgICAgIChHQ2VkIGlub2RlIG5vZGVzIGV4aXN0IG9ubHkg
b24gbGViIEIpCj4gQXQgdGhpcyBwb2ludCBhbGwgdmFsaWQgbm9kZXMgYXJlIHdyaXR0ZW4gdG8g
TEVCIEIsIHJpZ2h0PwpZZXMuCj4KPj4gICAgMi4gUG93ZXJvZmYuIEEgbm9kZSBuZWFyIHRoZSBl
bmQgb2YgdGhlIExFQiBpcyBjb3JydXB0ZWQgYmVmb3JlIHBvd2VyCj4+ICAgICAgIG9uLCB3aGlj
aCBpcyB1bmNvcnJlY3RhYmxlIGVycm9yIG9mIEVDQy4KPiBJZiB3cml0aW5nIG5vZGVzIHRvIEIg
aGFzIGZpbmlzaGVkLCB0aGVzZSBwYWdlcyBzaG91bGQgYmUgc3RhYmxlLgo+IEhvdyBjYW4gYSBw
b3dlci1jdXQgYWZmZWN0IHRoZSBwYWdlcyB3aGVyZSB0aGVzZSB2YWxpZCBub2RlcyBzaXQ/Ckkg
bWVhbiwgdGhlIHVuY29ycmVjdGFibGUgRUNDIGVycm9yIGlzIGNhdXNlZCBieSBoYXJkd2FyZSB3
aGljaCBtYXkgbGVhZCAKdG8gY29ycnVwdGVkIG5vZGVzIGRldGVjdGVkIGluIFVCSUZTLiBJIGZv
dW5kIHVuY29ycmV0YWJsZSBFQ0MgZXJyb3JzIG9uIApteSBOQU5ELCBpbiB0aGUgZW52aXJvbm1l
bnQgb2YgaGlnaCB0ZW1wZXJhdHVyZSBhbmQgaHVtaWRpdHkuCgpBdCBwcmVzZW50LCBVQklGUyBp
Z25vcmVzIGFsbCBFQkFETVNHIGVycm9ycywgc28gdGhlIGNvcnJ1cHRlZCBub2RlIGlzIApvbmx5
IGNvbnNpZGVyZWQgaW4gYmVpbmcgY2F1c2VkIGJ5IHVuZmluaXNoZWQgd3JpdGluZy4gSSB0aGlu
ayBVQklGUyAKc2hvdWxkIGNvbnNpZGVyIHRoZSBjb3JydXB0ZWQgYXJlYSBjYXVzZWQgYnkgRUND
IGVycm9ycyBpbiBwcm9jZXNzIAp1Ymlmc19yZWNvdmVyX2xlYigpLiBub19tb3JlX25vZGVzKCkg
d2lsbCBza2lwIGEgcmVhZC13cml0ZSB1bml0LiBNYXliZSAKdGhlIGNvcnJ1cHRlZCBhcmVhIGlz
IHNraXBwZWQuCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
