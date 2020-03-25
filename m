Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A18192201
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 08:54:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KxDkqhp9tkdEvFZdQrTXd4YUVme8/JctjLtYRQih1Lk=; b=gU+nhrHz83qLJMru4hf4aqU97
	RQzGuU1PNuRXcxc9aRXg5jxrqDLCx6HTYqEQW/UpxIXZ5T7TQs4ktH3MR23uRLt1fzMZZMCsL3Ldn
	A/We0A+f+HIRgxrgeWpxmfZD9bwIW50lu8f0nN0pe694iYHq0fL+ehImXJyRttQLSqin2XpFXahOI
	CGyohqTSlScHAsr8q4pjtAacDPkYyFdtGPscp0u3DQPHzRljQ9xdYwo88leAwHGgW8bkQ04b3knOR
	1o56ZSMPUpM97+QSGMweXOuQ6OweLjD5W+2cQdk1BazJ30SSJj3T1IUzW4QopeoIWjs9X6vT55umo
	DjfeLdJow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH0rh-000403-DT; Wed, 25 Mar 2020 07:54:17 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH0ra-0003zV-7w
 for linux-mtd@lists.infradead.org; Wed, 25 Mar 2020 07:54:11 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DD25C3C7575C8B8A45B8;
 Wed, 25 Mar 2020 15:54:02 +0800 (CST)
Received: from [127.0.0.1] (10.67.102.197) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Wed, 25 Mar 2020
 15:53:52 +0800
Subject: Re: [PATCH] mtd:Fix issue where write_cached_data() fails but write()
 still returns success
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <1584674111-101462-1-git-send-email-nixiaoming@huawei.com>
 <20200324230620.174db1a7@xps13>
From: Xiaoming Ni <nixiaoming@huawei.com>
Message-ID: <b37235a2-d949-7f78-770b-4a69d9d7aaaa@huawei.com>
Date: Wed, 25 Mar 2020 15:53:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200324230620.174db1a7@xps13>
X-Originating-IP: [10.67.102.197]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_005410_451402_CEAFD8AD 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: zhangweimin12@huawei.com, vigneshr@ti.com, richard@nod.at,
 wangle6@huawei.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gMjAyMC8zLzI1IDY6MDYsIE1pcXVlbCBSYXluYWwgd3JvdGU6Cj4gSGkgWGlhb21pbmcsCj4g
Cj4gWGlhb21pbmcgTmkgPG5peGlhb21pbmdAaHVhd2VpLmNvbT4gd3JvdGUgb24gRnJpLCAyMCBN
YXIgMjAyMCAxMToxNToxMQo+ICswODAwOgo+IAo+PiBtdGRibG9ja19mbHVzaCgpCj4+IAktLT53
cml0ZV9jYWNoZWRfZGF0YSgpCj4+IAkJLS0tPmVyYXNlX3dyaXRlKCkKPj4gCQkgICAgIG10ZGJs
b2NrOiBlcmFzZSBvZiByZWdpb24gWzB4NDAwMDAsIDB4MjAwMDBdIG9uICJ4eHgiIGZhaWxlZAo+
Pgo+PiBCZWNhdXNlIG10ZGJsb2NrX2ZsdXNoKCkgYWx3YXlzIHJldHVybnMgMCwKPj4gZXZlbiBp
ZiB3cml0ZV9jYWNoZWRfZGF0YSgpIGZhaWxzIGFuZCBkYXRhIGlzIG5vdCB3cml0dGVuIHRvIHRo
ZSBkZXZpY2UsCj4+IHN5c2NhbGxfd3JpdGUoKSBzdGlsbCByZXR1cm5zIHN1Y2Nlc3MKPiAKPiBJ
IHJld29yZGVkIGEgYml0IHRoZSBjb21taXQgbG9nIGFuZCBhbHNvIGFkZGVkIGEgJyAnIGFmdGVy
ICdtdGQ6JyBpbgo+IHRoZSB0aXRsZSB3aGVuIGFwcGx5aW5nLgo+IAo+IFRoYW5rcywKPiBNaXF1
w6hsCgpZb3VyIHJldmlzZWQgY29tbWl0IGxvZyBpcyBtb3JlIGFjY3VyYXRlIGFuZCBjbGVhcmVy
LCB0aGFua3MgZm9yIHlvdXIgCmNvcnJlY3Rpb24KVGhhbmtzLgpYaWFvbWluZyBOaQoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgg
TVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
