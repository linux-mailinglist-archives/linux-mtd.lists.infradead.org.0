Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F11129F5B
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Dec 2019 09:46:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tKj4Hz+h5B3D67BKN7RiMxxZQl5CUfMab9FzHkRDvqk=; b=O3ragaFSK4uF2/
	EXu6+REayCTALr3LuhGBC9lboHEM1XhgdizsCdFJFECeY0pICUWEQTzNfoxqgy2l9F5tWR5dTo3Yl
	Z9FkddNi0s0FZLTyFIAK60muLCWs/zv4hcy9vKGagCvTdLCXDYGZMxVc+JbH5Z7za1Ul7/eDFqc/p
	6icEB1KPO5hwJcDyBW2/yFdGYpgBO/iwQSB2xXkEpzOnumgSy2aAIC+LamME/RDiyEf5VC79IjnUk
	Q5fCgnFqgtvRZBlb/wIMuZUXHo7You/VoNNe3ZE0BzRHMvBu9i7T74Htn4SHs9eivRluOjuQdpBPy
	YPzzdiHvwOdKfB9GcoCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijfpS-000482-7j; Tue, 24 Dec 2019 08:46:10 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijfpI-00045p-B2
 for linux-mtd@lists.infradead.org; Tue, 24 Dec 2019 08:46:02 +0000
Received: by mail-io1-xd41.google.com with SMTP id t26so18536628ioi.13
 for <linux-mtd@lists.infradead.org>; Tue, 24 Dec 2019 00:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
 b=oSNTlT55S3VMpFl+4fySqC3u4YoAoztGfoVSP3wFAPYFWsXQI1giXiHsJxeVgA8wKV
 hwULOTryEx3lBfxk63gUH81C2gQlAZlpm+aJQe+/8QTFExYby4VXgAHOExxmkLh2JtdG
 TiTDoeJwiEsRsob2+npOsu1HTE5l3KD8qzz/VgAKRx1Duv9MQ59SrgwEmUHNA+ZhhElO
 FLyTrc29L41ygHkbyLYW+d4tggvOE/k3tBa1QgwGaKmT05FNAOOQsBLQoIO1VpMQ67Vd
 aruBW7fco12liiTMGrdJ76u//KWiZN1ELjv5lB+Lg5aB3LosSk3HmcjI9v9Dl0cnEnaF
 MVfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
 b=swExb+hr3he3YkOC96nMJxlluhzqBjnhrr3w2LTmIQGbzYlKEzzkBfvm3JOxDsRJSQ
 GwTFskdgiYQIJqsc8WwfGTGXlZSqJoXu3uRLyUR+4J8spy5PIbtg7StoC6zMdojAJaX6
 c4lIubqAT7bWCr9aVQNy5lfDXxBuT7kBezk9OQDU4f/ZDDod/as6h4/Ak93BKWR5L2CW
 hwzM0N/GsCe/6jMyh4NgZRQC6XyOXEUBUwCuTul8+uR1ms4Bdtvxh7eHP6ZSnGHNSLTO
 uGdOcQpUibLqLP2x5MdLnOBAbIskMJNeM7+Lutjn3VnNCy734eTYTBJOVTr7NS7YJMRr
 TqkQ==
X-Gm-Message-State: APjAAAWa4qmjxHiJyNzDwoRKVx67gH2uT5hldECts1fA8N2cVOzcztwW
 y/3lHTbL03fn20AC1z47CM8tv0PnNcwwbhLhQAQ=
X-Google-Smtp-Source: APXvYqzDXPiusXd90IvAVlyEbeO6jCMdOyb5CPbz+Z0EDnXal3aG8RcvJ2u/hlIr8XoTCaRoauJNJKQwlLXTh0fOni4=
X-Received: by 2002:a5d:9158:: with SMTP id y24mr4336955ioq.298.1577177159339; 
 Tue, 24 Dec 2019 00:45:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f302:0:0:0:0:0 with HTTP; Tue, 24 Dec 2019 00:45:58
 -0800 (PST)
From: Beth Nat <clementidibia1960@gmail.com>
Date: Tue, 24 Dec 2019 08:45:58 +0000
Message-ID: <CAEG=icH-SN5dpsQRSZpGxr6Zs1qfbZ=LtCEFq=gRxqcGeKyiKw@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_004600_409696_4381DE33 
X-CRM114-Status: UNSURE (  -0.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (bethnatividad9[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clementidibia1960[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (clementidibia1960[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: bethnatividad9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

How are you today my dear? i saw your profile and it interests me, i
am a Military nurse from USA. Can we be friend? I want to know more
about you.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
