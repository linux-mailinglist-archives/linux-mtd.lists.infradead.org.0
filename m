Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7273912F821
	for <lists+linux-mtd@lfdr.de>; Fri,  3 Jan 2020 13:21:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ydi2mwnAc22oIvCMo0GVOrTAJzaRyqECta8UnI7YT5M=; b=TYUyK/NhX4h19x
	RrgSkjq0ms1xZl3AoNhjKWzKTGXyYwRAEAWB2KzRJygd99vD4S1Ym4UsNML/FGpa4weDC6ra6R2gl
	kO/zGuDWviO87iy511ilUmVUjSSOeL9Gm4V7feUMpgWh/WRFyIExF167JuZA1sn6XIpLa/hMpTJhy
	BQv5LVBnpDL1CHKjlCFylqguM0y03PVhZeORJL2aJX5WDFLkL/QffYldhUOvBs/UbFo2EwHQ7ElGN
	bNavlN3GNgwjZ+pxW6Onp2P2skwDPC8eor/5lwvqKdTxAFduCl5eOpvJw5xL+WDwDjRkXusBhJeAM
	l62e/K14IE9aWPiQWnuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inLxC-0004DW-QG; Fri, 03 Jan 2020 12:21:22 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inLx1-0004BX-Kq
 for linux-mtd@lists.infradead.org; Fri, 03 Jan 2020 12:21:13 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B2366F019B76878AC67F;
 Fri,  3 Jan 2020 20:21:01 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Fri, 3 Jan 2020
 20:20:52 +0800
From: yu kuai <yukuai3@huawei.com>
To: <richard@nod.at>, <miquel.raynal@bootlin.com>, <vigneshr@ti.com>
Subject: [PATCH] ubi: wl: remove set but not used variable 'prev_e'
Date: Fri, 3 Jan 2020 20:20:15 +0800
Message-ID: <20200103122015.6385-1-yukuai3@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_042111_853160_BB47B6FE 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: zhengbin13@huawei.com, yukuai3@huawei.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, yi.zhang@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Rml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgoKZHJpdmVycy9t
dGQvdWJpL3dsLmM6IEluIGZ1bmN0aW9uIOKAmGZpbmRfd2xfZW50cnnigJk6CmRyaXZlcnMvbXRk
L3ViaS93bC5jOjMyMjoyNzogd2FybmluZzogdmFyaWFibGUg4oCYcHJldl9l4oCZIHNldCBidXQg
bm90CnVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCgpJdCBpcyBuZXZlciB1c2VkLCBh
bmQgc28gY2FuIGJlIHJlbW92ZWQuCgpTaWduZWQtb2ZmLWJ5OiB5dSBrdWFpIDx5dWt1YWkzQGh1
YXdlaS5jb20+Ci0tLQogZHJpdmVycy9tdGQvdWJpL3dsLmMgfCAzICstLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bXRkL3ViaS93bC5jIGIvZHJpdmVycy9tdGQvdWJpL3dsLmMKaW5kZXggNWQ3N2EzOGRiYTU0Li44
MzdkNjkwYThjNjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL3ViaS93bC5jCisrKyBiL2RyaXZl
cnMvbXRkL3ViaS93bC5jCkBAIC0zMTksNyArMzE5LDcgQEAgc3RhdGljIHN0cnVjdCB1Ymlfd2xf
ZW50cnkgKmZpbmRfd2xfZW50cnkoc3RydWN0IHViaV9kZXZpY2UgKnViaSwKIAkJCQkJICBzdHJ1
Y3QgcmJfcm9vdCAqcm9vdCwgaW50IGRpZmYpCiB7CiAJc3RydWN0IHJiX25vZGUgKnA7Ci0Jc3Ry
dWN0IHViaV93bF9lbnRyeSAqZSwgKnByZXZfZSA9IE5VTEw7CisJc3RydWN0IHViaV93bF9lbnRy
eSAqZTsKIAlpbnQgbWF4OwogCiAJZSA9IHJiX2VudHJ5KHJiX2ZpcnN0KHJvb3QpLCBzdHJ1Y3Qg
dWJpX3dsX2VudHJ5LCB1LnJiKTsKQEAgLTMzNCw3ICszMzQsNiBAQCBzdGF0aWMgc3RydWN0IHVi
aV93bF9lbnRyeSAqZmluZF93bF9lbnRyeShzdHJ1Y3QgdWJpX2RldmljZSAqdWJpLAogCQkJcCA9
IHAtPnJiX2xlZnQ7CiAJCWVsc2UgewogCQkJcCA9IHAtPnJiX3JpZ2h0OwotCQkJcHJldl9lID0g
ZTsKIAkJCWUgPSBlMTsKIAkJfQogCX0KLS0gCjIuMTcuMgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tdGQvCg==
