Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A16192836
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 13:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CERU8069edVfCg5BvQCPVR0ruIwyCXeWK2CDgHWMRpk=; b=mqKhL61GAntRZH
	3+OIDs4vC73tPDUsCroPaw8Er/pJPjCk3O2xyVwSe4Lopk+vNbtFLKMqAmOVZDfar69Fhl6uPmKZv
	tNNZHR9TCPhXDcN/rmgZptR7RRnosooV87ys04OTVSgslsO59oyvqMyZEOuemOzLY2z7Gw2uKlWQZ
	oKPwT3dwaKE51fDvTcA/SUWVdkt8XBWM/AWpp/VJu9gk/h80nJogQtV38Kd6kcbReBWfxzb8ha0VZ
	FeChiiDYoDIWvw3RFd/ccuo4kG7yucAZ0yXS+m6HzdaCnH5WkrC+/bDWKYqJFS0ZJyJ46gTlCoCge
	ZjTtga4Q7FU+QYFulZuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH59D-0003H2-0O; Wed, 25 Mar 2020 12:28:39 +0000
Received: from [2001:4bb8:18c:2a9e:999c:283e:b14a:9189] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH591-0003Fx-4q; Wed, 25 Mar 2020 12:28:27 +0000
From: Christoph Hellwig <hch@lst.de>
To: "Theodore Ts'o" <tytso@mit.edu>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Chao Yu <chao@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Richard Weinberger <richard@nod.at>, linux-xfs@vger.kernel.org
Subject: lazytime fixes
Date: Wed, 25 Mar 2020 13:28:21 +0100
Message-Id: <20200325122825.1086872-1-hch@lst.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 Eric Biggers <ebiggers@kernel.org>, linux-mtd@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi all,

this is my take on Teds take on Erics bug report about ext4 inodes
beeing kept dirty after sync.  After looking into the area I found
a few other loose ends, so the series has grown a bit.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
