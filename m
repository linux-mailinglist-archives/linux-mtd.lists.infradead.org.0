Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8692CDE366
	for <lists+linux-mtd@lfdr.de>; Mon, 21 Oct 2019 06:47:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:
	Subject:Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iUntvg/zFY4gwyiB28XnYTbxlm3BFc0u3/jKh6vN36w=; b=BjF
	dfdMo6g3a7ErdeRbUNu3Im0KY4UhkNe/O6mfkJIzVPVwVpEHpVjAj2AM/K+Dop2EzGmwoMBY4T0dK
	/YqRRdsLQP7U6KVjgoivDwWVQFPPQWXqEEwD/QnwXxoM5AaSFtYWLTlaLweRfjVyN9B9RjE8g98V4
	dBWT3q1Gv3md2KMAdOe+oQ24n9fPJAfmzerY6Yskye8lDL5jH+Y9z6pDoXdwMmlH8dNuxwXZeWaKg
	16QMZIsBCjLs6o5QLwFbdKrRY38xOzTANYpky8bmvtWQS6xFFMFO0IlbHYCFOjJO0TgY6qhpDr+uJ
	vLImJRcwcQNtuPSwoK3cFONR8XLpExQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMPbi-0003Tr-Qx; Mon, 21 Oct 2019 04:47:50 +0000
Received: from [187.141.58.171] (helo=correo.mcontreras.gob.mx)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMPbc-0003TL-Of
 for linux-mtd@lists.infradead.org; Mon, 21 Oct 2019 04:47:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by correo.mcontreras.gob.mx (Postfix) with ESMTP id 65594EE81EE7
 for <linux-mtd@lists.infradead.org>; Sun, 20 Oct 2019 17:58:07 -0500 (CDT)
Received: from correo.mcontreras.gob.mx ([127.0.0.1])
 by localhost (correo.mcontreras.gob.mx [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 307xdODQAMeK for <linux-mtd@lists.infradead.org>;
 Sun, 20 Oct 2019 17:58:07 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
 by correo.mcontreras.gob.mx (Postfix) with ESMTP id 7C98BC7EA2B8
 for <linux-mtd@lists.infradead.org>; Sun, 20 Oct 2019 16:39:33 -0500 (CDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 correo.mcontreras.gob.mx 7C98BC7EA2B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mcontreras.gob.mx;
 s=53A92184-CD91-11E8-86DF-F45FB6B066AC; t=1571607574;
 bh=Rqp1tqcd8K/qNgrJx+rtaGPrHlODB2s2MX0PKJm7Ymc=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=NSzzN4hPsQeOv8K53onQPNAq0428dPux9Oyh5231Ny+BTHfOvQ7lPq+m9I52hLUrI
 ug4xO/Ydg5BLFSRkzilyIICqRpZKLn4DmFyp5WIL7oyIEOHG/IC3cNIAi8NEpIYFWm
 CR8xNiW5yL2lhkAHnDwSGFoAoFkVrB5TZmIV6T7/MKF4yBFbzZX1n/f3PA3BcOu53d
 6zcaKhz/CXPhaexJbvn8Ix+PGgI7nV5KPSn0oWavTXl9umQ/JqNvvCb9P7HQsqkYZ4
 NoDkfH1Hm+8pBft12W+Ez9y0b4hYi5kDHJzeAxqdMshnEvyFCO890tENobQb705x+C
 obd8vU4VS2pSw==
X-Amavis-Modified: Mail body modified (using disclaimer) -
 correo.mcontreras.gob.mx
X-Virus-Scanned: amavisd-new at mcontreras.gob.mx
Received: from correo.mcontreras.gob.mx ([127.0.0.1])
 by localhost (correo.mcontreras.gob.mx [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id WuxMnDModyXC for <linux-mtd@lists.infradead.org>;
 Sun, 20 Oct 2019 16:39:33 -0500 (CDT)
Received: from [192.168.0.111] (unknown [92.99.96.15])
 by correo.mcontreras.gob.mx (Postfix) with ESMTPSA id 30DCFA048630
 for <linux-mtd@lists.infradead.org>; Sun, 20 Oct 2019 16:22:18 -0500 (CDT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Proposal
To: linux-mtd@lists.infradead.org
From: "Mr. Maheed " <m.rosas@mcontreras.gob.mx>
Date: Sun, 20 Oct 2019 14:21:03 -0700
Message-Id: <20191020212219.30DCFA048630@correo.mcontreras.gob.mx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_214744_863431_99968907 
X-CRM114-Status: UNSURE (  -4.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.8 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (asadmaheed9[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 1.0 HK_NAME_MR_MRS         No description available.
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
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
Reply-To: asadmaheed9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

I have a special discussion to discuss with you please get back to me.
Sincerely,
Mr. Maheed Asad
Alcaldia La Magdalena Contreras Coordinacion


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
