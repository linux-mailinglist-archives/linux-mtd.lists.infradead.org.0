Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB471DFD65
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 08:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:
	Date:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=3zy2hU3J2a6ecciuxkgL1snLz1Ws8kgC0Lc0Slmule4=; b=D0KyEuCBuVgzw8
	qsgT0nsQKlMQjSQ1x8TkcVsMrUGHrT450R1kq335dK6Ur+V+Ri8RAz70MBrQ2C0zwaDN7PnlM/xBN
	80Isk0SExdQO/66VzFh8Os55YNCiVqC9TrKA88FH9cXp61NxL3jnI11dKT0CbrGbMST5q8ZmrGBxR
	7vZFE1tmXTmjAr82ScFGU5eiLdNT0HwxuXCSUOlIiA/4rhP4ngEvt6HJwqEbfcj1rXInrX7Mgric2
	lzxNGQTb0xr+msR7IiWR1ig1NgAZ27iDI7MOxV+N8N6eEzTgz6hOUsXb3MGX5oyMLhfyJq+8yh9hQ
	2WMJmQQvGQRala3JUPQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcjjF-0005Fs-1s; Sun, 24 May 2020 06:03:21 +0000
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcjj2-0005E4-Sj
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 06:03:10 +0000
Received: by mail-il1-f200.google.com with SMTP id u4so3536762ilq.17
 for <linux-mtd@lists.infradead.org>; Sat, 23 May 2020 23:03:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=f8cm7i+6DZaPSRKesHef9xX2E7QNOPynTMGv2aqlP84=;
 b=Nd5JcdrYx0+dzJVZGyRRqOFbccmtzLiEjlSWSi1ViBCHPja2OcAuPNVSHPhncmwxjc
 j2olaneRx9ZrcZVtQ7goV+C1yYRg4Jpf9XeqNttLPJY8aM9rHopB+X/4EaoeW1uuQx34
 FVjCBLOp6sGx//C7AdMINqFClI6IRy2DavoipLhAe3M5ujnV+CHX0QbC9gRMi3AtPcPb
 eZYTjVc4OfAG0gNuPAY6z8+6cX40hUt+nROnj7DTucuQhmU478Gb11BQN3rOfaThFyzF
 lQzjTwBGIgTWhEFoMejCajztdffm9nigt6iuCM2yU1ktOKKTwU9rvOxrhzIOxJ4EqhCa
 KiyQ==
X-Gm-Message-State: AOAM531Y9PheEhnKxNecdNL3ZWA6xY2ZA7Bj9AlwXygHKWk/CvhsWfEl
 hIbvd5ka75xjUTcjWNRKHMTb/hnWSllZ7UjmdUESJp2E/rG+
X-Google-Smtp-Source: ABdhPJwGqcUvFi9kw0HhVexHTCTsxhtssXwOhzWwTlRVW0bo6dxr+flQYWuUIA+M7jdwFMz5UWSgckDGMnoq58SrEydxAK0FWUZP
MIME-Version: 1.0
X-Received: by 2002:a92:914f:: with SMTP id t76mr20627206ild.238.1590300183500; 
 Sat, 23 May 2020 23:03:03 -0700 (PDT)
Date: Sat, 23 May 2020 23:03:03 -0700
In-Reply-To: <000000000000ba47b705a6443a0d@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000861e3305a65e9d74@google.com>
Subject: Re: KASAN: use-after-free Read in uif_close
From: syzbot <syzbot+0ce97ea45b008ba3b8bd@syzkaller.appspotmail.com>
To: arnd@arndb.de, daniel.baluta@nxp.com, festevam@gmail.com, 
 gregkh@linuxfoundation.org, kernel@pengutronix.de, 
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com, 
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
 linux@rempel-privat.de, miquel.raynal@bootlin.com, richard@nod.at, 
 s.hauer@pengutronix.de, shawnguo@kernel.org, syzkaller-bugs@googlegroups.com, 
 vigneshr@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_230308_925211_11EB521B 
X-CRM114-Status: UNSURE (   2.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

syzbot has bisected this bug to:

commit 32ec783ae19d48084b893cc54747fed37b07eb0c
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Wed Apr 8 19:02:57 2020 +0000

    firmware: imx: fix compile-testing

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15b22972100000
start commit:   c11d28ab Add linux-next specific files for 20200522
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=17b22972100000
console output: https://syzkaller.appspot.com/x/log.txt?x=13b22972100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3f6dbdea4159fb66
dashboard link: https://syzkaller.appspot.com/bug?extid=0ce97ea45b008ba3b8bd
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14b23f06100000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=111b0172100000

Reported-by: syzbot+0ce97ea45b008ba3b8bd@syzkaller.appspotmail.com
Fixes: 32ec783ae19d ("firmware: imx: fix compile-testing")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
