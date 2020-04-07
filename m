Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB511A0651
	for <lists+linux-mtd@lfdr.de>; Tue,  7 Apr 2020 07:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YG0ccjkB6u0C4Nmwqpkzt15cY8VOcEVWiNQH46gqFIw=; b=PpE
	jUNpUQIJR2q35cAb1vWiAgaZ+F5bgZDA0aRDLiR6eWT1eU7oMXwslFSuOcWKvvKxmfkUecB/sBJ2k
	shtFduWpsHM17ImkH/Z+afA5RyIORZL/CbIw554CHqQdguaTaQ9RA5IZuwiPAHac5+yvaYedCoKEF
	BvMjOzqcLsTcJPq6h0E5IwxQotMWSasNwI/cmFlzm5EAfx+xYYT1gpNvOO3c9LCVwfaIP+v8/Qodq
	jniIuAvBOCJWIobwok2m60/5DWVM2rrUR5g+zCAqGW4k94LVf1vozVkGFOGtXPBfJF+vZSuCZKrUG
	V2grx3y7USgqkL3H8q85kTY3ExSLgoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgXa-0000qV-IC; Tue, 07 Apr 2020 05:12:50 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgXS-0000lT-7M
 for linux-mtd@lists.infradead.org; Tue, 07 Apr 2020 05:12:45 +0000
Received: by mail-ua1-x941.google.com with SMTP id 9so826685uav.12
 for <linux-mtd@lists.infradead.org>; Mon, 06 Apr 2020 22:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=38NlpNEbzNFWb7RFQtfvRASB+B576yw7dNc7pozf3pc=;
 b=m9m/DCsFRus/zRmIuphflM5sHyenmkMN/TOEnECOGthbLJHVg8u2+iqtFZpNbyb2/k
 2tLF//qwyXGtNVJKRleGUy+KbEtVjN+06Aw6FbGL98d5M/QEqB9c9SHaIsBPFlQYoUCh
 Lj+P9EPUGdvyQRip4KeH3oSvDVhqDTV0IJcbcI66BzYP/b9Y/1y4LF++1q0teLhPl3GM
 v15gBTxOBB8qvH4CNaCnwdm2sugBL+St8qIlm7SqBWweWj6hdsos1F0mjeWO8qJt64R9
 xl3tya8AfljNAFdSOkZ4tC7INitomO8JQPFHHcp+JAODUsaup01At9KIYDntXEoTQZb0
 DmdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=38NlpNEbzNFWb7RFQtfvRASB+B576yw7dNc7pozf3pc=;
 b=KvySAIOp2T8GZ24Fh36VyGBtifywY8wY7MyF2yGRzodCxpdhJxl2Yb9Cpx5GKb/Lr1
 vm/nSF0IdmUOBgU9kJTEY3a5hLWgXS0wZWOGC5T4V23WXM/eVnH5VWF0j6VScO8bu3/D
 Yf0ORbmF3A8vQF9190rLS5cfUFSx92Q/qTeHyN3QWxGNX4/4F+dv+SWi4na26o9bKGvJ
 +kv0cfYOd7VW0MDrvV/ExHuefXuf0U9fsc7RqHTO4MwwB+zVz1MQ7mbX1I/FS6BLCCjb
 5T+xI6+2R0aDjeSXv5+0ob+7vuAbKCGZ5Uw8dJi5OQbtffPiJqFl2BROqnnulZa6rp0+
 yHGA==
X-Gm-Message-State: AGi0PuYqHI6+cDtIMsGbFoaUH43WttYNAmgn4sxh0zp+L4sEbDYuW/8K
 ktJDitjbzQwNcvSGEuQlN2kp4dgCxuxC/qvQwqM=
X-Google-Smtp-Source: APiQypIYXniGQUHEpASwiGNjKth4Cu9ElCz4yjrJ2uXbYBYunhfz0887D/TRydUbTstl7MwaeVftG8QxF1P80ST3qos=
X-Received: by 2002:ab0:a9:: with SMTP id 38mr504317uaj.61.1586236361040; Mon,
 06 Apr 2020 22:12:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:4929:0:0:0:0:0 with HTTP;
 Mon, 6 Apr 2020 22:12:40 -0700 (PDT)
From: SANDRA DEWI <dewisandra154@gmail.com>
Date: Tue, 7 Apr 2020 05:12:40 +0000
Message-ID: <CABRVPWys0xe4CWBkaU0ZXQW+4d=tjDOjyo8cKohc5-VFkWPkcA@mail.gmail.com>
Subject: whether this is your correct email address or not
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_221242_302315_D6ED343C 
X-CRM114-Status: UNSURE (  -1.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [dewisandra154[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dewisandra154[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 HK_SCAM                No description available.
 1.0 FREEMAIL_REPLY         From and body contain different freemails
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
 0.0 ADVANCE_FEE_3_NEW_MONEY Advance Fee fraud and lots of money
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

Dear ,Pastor



I have a client who is an oil business man and he made a fixed deposit
of $26 million USD in my bank, where I am the director of the branch,
My client died with his entire family in Jordanian

50% of the fund will be for the church  for the work of God,the
balance 50% we share it in the ratio of 50/50. Meaning 50% to you and
50% for me

intervention in the Syrian Civil War 2014 leaving behind no next of
kin. I Propose to present you as next of kin to claim the funds, if
interested reply me for full details and how we are to



proceed to close this deal.




Mrs. Sandra Dewi



Email  mrsdewi@gmx.com

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
