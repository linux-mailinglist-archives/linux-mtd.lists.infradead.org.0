Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388181DC42A
	for <lists+linux-mtd@lfdr.de>; Thu, 21 May 2020 02:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:
	Subject:Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SGTg5qTmNBWAkiZCXhL9fF13rgzsrrpU5BymoiynscQ=; b=mVn
	RudG+gI5vcdZDKcCHD4sGRgfpxJ9Y/NpRW52C9+1CorkqIMXLTcs/6isOKOt8o+dgPWSHh1XmYp+4
	+bKEA9uwsni8dU9oh31fP1Qw0xwXZ14uDSlTrF98uQFvNvRzmqGED/1+9H8ssMh9I6rola+3nYqD9
	mPh21QfjzthSUTDRjXcrb3VFtYRSVUYEBDqr24vrjONICV1f+h9GnIFka/SimDvCA39TDO/JF2MIG
	NhmbRP+BkldHMwJV/DBAGTP0sGb19Ft0BPPxKkkXBbiapUYLz7SJSilFr61s481Hl+xqcLev18bX9
	oqQxSWCZhcvRaCmj9Cei6Ckm+yxAc/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbZOe-0007cF-Rn; Thu, 21 May 2020 00:49:16 +0000
Received: from poczta.grupaang.pl ([185.30.126.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbZOO-0007SJ-5s
 for linux-mtd@lists.infradead.org; Thu, 21 May 2020 00:49:02 +0000
Received: from localhost (localhost [IPv6:::1])
 by poczta.grupaang.pl (Postfix) with ESMTP id 239B09C23BD1;
 Thu, 21 May 2020 02:37:50 +0200 (CEST)
Received: from poczta.grupaang.pl ([IPv6:::1])
 by localhost (poczta.grupaang.pl [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id 55chENBezQyO; Thu, 21 May 2020 02:37:50 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by poczta.grupaang.pl (Postfix) with ESMTP id 1F01F9C24DD3;
 Thu, 21 May 2020 02:34:02 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.9.2 poczta.grupaang.pl 1F01F9C24DD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=grupaang.pl;
 s=7793420A-B2DC-11E5-9111-2A02918EC272; t=1590021242;
 bh=cqIY/mudBtC9yvLXuPdU1hJ2LOQoEgrUVunny0tc7EQ=;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:To:
 From:Date:Reply-To:Message-Id;
 b=VrwYG79avHsnB5t+9pfegvU3xll5/CZe+f8U+jr779MfH/N6j1uywXEL5dhsGegQz
 cLCMkPonoLJnxr2dSzeKxIW4aIR/sUUuEr7PpwGwiolgyO1NK63crJ7YgBCWcG2Jef
 LizHofMPnzwgT7v4eduz2eFs7oGKCRdmX2dO16Iw=
X-Virus-Scanned: amavisd-new at grupaang.pl
Received: from poczta.grupaang.pl ([IPv6:::1])
 by localhost (poczta.grupaang.pl [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id LKZs3bI8FP3M; Thu, 21 May 2020 02:34:02 +0200 (CEST)
Received: from [172.20.10.6] (unknown [105.4.3.6])
 by poczta.grupaang.pl (Postfix) with ESMTPSA id E70AD9C24E05;
 Thu, 21 May 2020 02:31:49 +0200 (CEST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: my subject
To: Recipients <adam.kobiela@grupaang.pl>
From: "Harrison" <adam.kobiela@grupaang.pl>
Date: Wed, 20 May 2020 20:31:36 -0400
X-Antivirus: Avast (VPS 200520-0, 05/20/2020), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20200521003149.E70AD9C24E05@poczta.grupaang.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_174900_630086_3B8D3BC4 
X-CRM114-Status: UNSURE (  -3.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.6 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.30.126.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [harrison_leo1967[at]outlook.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: harrison_leo1967@outlook.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Ben=F6tigen Sie einen dringenden Kredit, wenn ja? Kontaktieren Sie uns sofo=
rt per E-Mail: harrison_leo1967@outlook.com f=FCr weitere Informationen

-- =

This email has been checked for viruses by Avast antivirus software.
https://www.avast.com/antivirus


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
