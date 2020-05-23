Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033661DFA08
	for <lists+linux-mtd@lfdr.de>; Sat, 23 May 2020 20:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tUcLeCWNVqD9diXQVBPLBH6SzoLKQ0TYmtd8SS0xT2g=; b=nfWs0cCyMH8Nh6
	HnrQY3Vm4UDAazRPAsnBqkLaJgbmNa2yDYbnj6miIX+sasNVkKZcU++uum/VpbMePJTaT/n6j+Prl
	k+zsm7B/7BWUv47hpgQtKJpAltW82dTWk7HA9gYpdx2cn6lpGAIJ1vDqLRZI5HY41xllp9XmltVce
	GuitSjCvz9+25Jd6s3QTRCAzSPhM6vwSfI2wAjICcYBkUFLP3P50gl1EEtIeMbLsMBiJaguegI9cy
	8mYMfLc1q6uFzktOoNAo+AIdR83QTLESQvyTvdwQKPWSnxvZhhxF1v274IUU5YkRYUPpO0mXEous3
	dTg//q2/41Yk3Z7rynAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcYS2-0000wX-Rz; Sat, 23 May 2020 18:00:50 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcYRr-0000tj-UE
 for linux-mtd@lists.infradead.org; Sat, 23 May 2020 18:00:41 +0000
Received: by mail-qt1-x841.google.com with SMTP id v4so10975712qte.3
 for <linux-mtd@lists.infradead.org>; Sat, 23 May 2020 11:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=F3NMDrR9dummcUXdRfruEEfbIS6yB2vx68nB8Asq/5Q=;
 b=vhvRG4iP0p/cCM0/gHqK0xx0MaMNF3/azTtn5P0fCT1b4XLjGRAoR85FXgvwYtowP6
 J1ev3dPiedOMtPyOzUYmKFEqsj6BkIi2lR8s0YRNLylOZ8MbeWQpwNTWDXPX57LUrKeO
 FLL54WToKnc9WyFCTQNZdn8yjuqVF61dsdwJrbIWn1f8+mXNgwQXd1Xox425XdFJLCTr
 UNYtD5Mkr7J8HytQpl125rrGiBWdOVTtdeDic18s2v1Ex5H4EMrCDseWe8z8QJUA2DPl
 pMcmWf9nM5lni1dYRbVMyTKtLHSFCzrJM5oRvB7Hp9K31CMWsqtaG47ZQbJG6ZEre6uU
 kwNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=F3NMDrR9dummcUXdRfruEEfbIS6yB2vx68nB8Asq/5Q=;
 b=WDZ5Qs62gYgdqbx1QBuMJ7VKvDeF3gSLgiB9lsiEMsRGfu2Xb5BOqvt5+zQvxDRN4P
 oCtDctijH7Mc7S5TEyVRiD7HSjqcg2tiDPXeDXzitI6uAWbrNNj40hN34p3HynU+m65e
 +y/cAj2WnbSiRT4BhNKL2FcL2gz+yqFK/ODijOgXUyUF6MvBjyMsIp+SsFkQZ/jVru1Y
 LDtOT0Y96rPOEdvb1GuKfa4qMUeywVDsvv3+IcFdd+i0WMvYY28lIdjZUddkRDgq3Gq7
 4yD9pqmA4olRh4LVlfLyzSZMzif5h2aPSvV3akM6AxJTX4dCSt6f3umuBFUo8LqDk7C2
 C6YA==
X-Gm-Message-State: AOAM532FOAhrzDwCZFrlw1SKQLMZA9r4YhMl6vRMn7GnkeNs78AZDLpR
 u/I8MKkW8iP6zim9FicQxgrjprgd57mkRzjs47w=
X-Google-Smtp-Source: ABdhPJw4JSLl4s8hKmdikxPHOZTjp7LuShJQWo5DKJXfhdyHNpRWrWLXX1iWw/azZwGF2Nz0kU5bTrWvyq5YmK6naS0=
X-Received: by 2002:ac8:1e16:: with SMTP id n22mr21502226qtl.78.1590256838401; 
 Sat, 23 May 2020 11:00:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a37:9fd3:0:0:0:0:0 with HTTP; Sat, 23 May 2020 11:00:37
 -0700 (PDT)
From: mrs chantal <mrs.chantalas1@gmail.com>
Date: Sat, 23 May 2020 18:00:37 +0000
Message-ID: <CAMdkyyDY_0O7YgysHCjgRTJ=8-B7XurK7o1razRHDVOjgr2V2g@mail.gmail.com>
Subject: jjCompliment
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_110039_982922_F880F3BE 
X-CRM114-Status: UNSURE (  -2.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [mrs.chantala2055[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mrs.chantalas1[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrs.chantalas1[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.0 MONEY_FORM_SHORT       Lots of money if you fill out a short form
 1.0 ADVANCE_FEE_4_NEW_MONEY Advance Fee fraud and lots of money
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
Reply-To: mrs.chantala2055@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

     Compliment of the day to you. I am Mrs.CHANTAL I am sending this brief
    letter to solicit your partnership to transfer $13.5 Million US
    Dollars.I shall send you more information and procedures when I receive
    positive response From you. Please send me a message in My private
    email address is ( mrschantal066@gmail.com  )
    Best Regards
    MrS.Chantal

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
