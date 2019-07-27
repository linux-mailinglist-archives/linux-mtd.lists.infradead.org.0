Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F42877862
	for <lists+linux-mtd@lfdr.de>; Sat, 27 Jul 2019 13:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsO2I0fOjTvh4qBw6HoTw63KnYEtOe29P4hndrCK0EU=; b=I+5DdKpc6t6k9O
	oOzK6zh3OyySdIJgvQ27bQCoS5LEbJJmKJm+h7wZip3KimB6f20QXUVz9p/j/r0Avy8FNtKjyu+Ij
	UfhSCiEIuD9sik/QD8+VoIQEKxRiAjudQai/gvPlLnHcBv4unFFkc8iaWZY4CMCCOx5E4r84fw8HD
	4+Ndrj3S/7eK3eMPzQ7xTo5g7NMKOJj6K3/DErFTUH+HoEFUAf/Phj99b0KYvoToE+OVwtWT+tua6
	C3L5bG1ysLtAdSbU4fIQW+Lj6TefqYVhtm1vV9+/8U/y4v1CDJLspvlXRSqAU7F3GA0SiiMZzND9U
	qmWY5JIV4eNiqYeLHuvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrKdw-0005QL-SI; Sat, 27 Jul 2019 11:13:40 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrKdp-0005PY-A1
 for linux-mtd@lists.infradead.org; Sat, 27 Jul 2019 11:13:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3AB43606D4AC;
 Sat, 27 Jul 2019 13:13:22 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 3FIFmhAxF4DT; Sat, 27 Jul 2019 13:13:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 51920606D4B6;
 Sat, 27 Jul 2019 13:13:21 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id dDwU3E9fLcRX; Sat, 27 Jul 2019 13:13:21 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 2113D606D4AC;
 Sat, 27 Jul 2019 13:13:21 +0200 (CEST)
Date: Sat, 27 Jul 2019 13:13:21 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: chengzhihao1 <chengzhihao1@huawei.com>
Message-ID: <294578939.51712.1564226001053.JavaMail.zimbra@nod.at>
In-Reply-To: <0B80F9D4116B2F4484E7279D5A66984F7A4DB4@dggemi524-mbx.china.huawei.com>
References: <1563602720-113903-1-git-send-email-chengzhihao1@huawei.com>
 <0B80F9D4116B2F4484E7279D5A66984F7A4DB4@dggemi524-mbx.china.huawei.com>
Subject: =?utf-8?Q?Re:_=E7=AD=94=E5=A4=8D:_[PATCH]_ubifs:_ubifs=5Ftnc=5Fsta?=
 =?utf-8?Q?rt=5Fcommit:_Fix_OOB_in_layout=5Fin=5Fgaps?=
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubifs: ubifs_tnc_start_commit: Fix OOB in layout_in_gaps
Thread-Index: AQHVPsBTBWetoNcJ1UaytZ+21M4VxabeWhAgfGLlKWo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_041333_498329_F1C8684A 
X-CRM114-Status: UNSURE (   2.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, yi zhang <yi.zhang@huawei.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogImNoZW5nemhpaGFvMSIgPGNo
ZW5nemhpaGFvMUBodWF3ZWkuY29tPgo+IEFuOiAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0Piwg
IlNhc2NoYSBIYXVlciIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+LCAiQXJ0ZW0gQml0eXV0c2tp
eSIgPGRlZGVraW5kMUBnbWFpbC5jb20+LCAieWkKPiB6aGFuZyIgPHlpLnpoYW5nQGh1YXdlaS5j
b20+Cj4gQ0M6ICJsaW51eC1tdGQiIDxsaW51eC1tdGRAbGlzdHMuaW5mcmFkZWFkLm9yZz4sICJs
aW51eC1rZXJuZWwiIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPgo+IEdlc2VuZGV0OiBT
YW1zdGFnLCAyNy4gSnVsaSAyMDE5IDEzOjA5OjU5Cj4gQmV0cmVmZjog562U5aSNOiBbUEFUQ0hd
IHViaWZzOiB1Ymlmc190bmNfc3RhcnRfY29tbWl0OiBGaXggT09CIGluIGxheW91dF9pbl9nYXBz
Cgo+IHBpbmcKCkkgaGFkIG5vIHRpbWUgdG8gbG9vayBhdCB0aGlzIHlldC4gSXQgaXMgb24gbXkg
bGlzdC4KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
