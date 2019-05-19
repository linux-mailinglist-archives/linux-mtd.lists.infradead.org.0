Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D406922876
	for <lists+linux-mtd@lfdr.de>; Sun, 19 May 2019 20:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:
	Subject:Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eEtVHwK/SYjB8rlE8MGZy8ShU+BC0Qb3qL1a9x8M6KI=; b=hfQ
	R00ZHkQa1X2DmYyvWyRp0PGBm0XXzRBN6lMzTymBNL+GJbiLyCGfGnk8VcaE+jjnYY3IS3CID4vVp
	6wMHiMirPnM2SYXKDLisM/y+/Oz0vBY44QiG6A/3qRBVIrjQVxoKHpmuLThu0hm7ezsrG8KT7uvLh
	nh52iVUzAZ/oaEsYLAJi/JpWRDAyKFzPJkA2sxE1wg5ygSKA3jf87z6P483RfHmt8/haukc1YRgUI
	Mitooq2aaqnh5gRjOfOPHojYJBCrbVof8cHwhyHmwDcfKCQbOPjbkCzlQ3vpREbCbDB0a57RS6ZbO
	dwQJ4OFs7Hub3n/IRKWOHuQyDLxClvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQw0-00071n-SJ; Sun, 19 May 2019 18:53:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQvu-00071c-Bh
 for linux-mtd@bombadil.infradead.org; Sun, 19 May 2019 18:53:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Reply-To:Date:From:To:
 Subject:Content-Description:Content-Transfer-Encoding:MIME-Version:
 Content-Type:Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FWy2LDjCqPLi/Ax+L7hCgxBxq8t1wD1U/4UU5e3C5q0=; b=OkvbHXVsqqP4RVzmnP62j6L5H
 aDRIhqdfLMIrSqwKOaSBFAudpRwO+E5to2fkWgISU4OX/IxCRIfnx1r7lSmX1OSSiKFOuM5/T7veP
 0SGRdlm4Y8EfXblmCv3VfDKJE4ek2YliV+8I8frVE9+CLMS8l5a8fL0pCPT4bn+/Ce3QbBD8GLkQk
 5r3/a6hPGWpc6dpNrGqI8Hmpl4bhMnKED215WkeEeCrOoBYk7yt6J5+XMXhXTi97R5cuUWbolEPRc
 K9IwzBiH0/UKwntqdFNeLpKIGmbDYg0b4N988flOan8sbTGYXzIYr3D2S2f5Q0Nnh6gGS9xTAKk1f
 XGBiqQCww==;
Received: from cherokee.natal.rn.gov.br ([177.67.68.34])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQvp-00023Q-V0
 for linux-mtd@lists.infradead.org; Sun, 19 May 2019 18:53:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by cherokee.natal.rn.gov.br (Postfix) with ESMTP id 96B7532CEC4;
 Sun, 19 May 2019 14:57:57 -0300 (-03)
Received: from cherokee.natal.rn.gov.br ([127.0.0.1])
 by localhost (cherokee.natal.rn.gov.br [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id nDfJyCS_Bu5J; Sun, 19 May 2019 14:57:56 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by cherokee.natal.rn.gov.br (Postfix) with ESMTP id 83D5F33123A;
 Sun, 19 May 2019 14:57:15 -0300 (-03)
X-Virus-Scanned: amavisd-new at cherokee.natal.rn.gov.br
Received: from cherokee.natal.rn.gov.br ([127.0.0.1])
 by localhost (cherokee.natal.rn.gov.br [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id QwQJkNzSF9xc; Sun, 19 May 2019 14:57:15 -0300 (-03)
Received: from [192.168.43.98] (unknown [197.210.52.158])
 by cherokee.natal.rn.gov.br (Postfix) with ESMTPSA id C2385330295;
 Sun, 19 May 2019 14:56:37 -0300 (-03)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: SPENDE VON 5 MILLIONEN EURO
To: Recipients <erica.moreira@natal.rn.gov.br>
From: "shane missler" <erica.moreira@natal.rn.gov.br>
Date: Sun, 19 May 2019 18:56:30 +0100
Message-Id: <20190519175637.C2385330295@cherokee.natal.rn.gov.br>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_195314_201516_7FC1BD25 
X-CRM114-Status: UNSURE (  -4.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.4 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (4.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.6 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (shanemissler.spende111[at]gmail.com)
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Reply-To: shanemissler.spende111@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Dies ist eine pers=F6nliche Mail, die ich an Sie adressiere. Ich bin SHANE =
MISSLER aus Florida, USA. Wie Sie bereits wissen, habe ich 2018 einen Lotto=
-Jackpot in H=F6he von 451 Mio. USD (330 Mio. GBP) gewonnen und das Geld ha=
t mein Leben und mein Familienleben ver=E4ndert, aber es wird mein Herz nic=
ht ver=E4ndern, wie ich an dem Tag sagte, an dem ich mein Geld habe Ich wer=
de dieses Geld f=FCr die Hilfe der Menschheit verwenden. Ich habe beschloss=
en, Ihnen und Ihrer Gemeinde einen Betrag von 5 Millionen Euro zu spenden, =
um diese Spende anzufordern.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
