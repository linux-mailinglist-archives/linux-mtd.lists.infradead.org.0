Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0DF1BA2B4
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 13:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u0HyOsuIXCFxeQTQFUS+AChuh6XLT0bVCBE5Ou5EWh4=; b=Qtx6XuUeqKV5QM
	zzP0uinNmslBmlmXr777gaM5ImjWWjNEqK1pFbxA1GoOBPQQJRd7T/KW9CE7re+0LzJohFfzUgkQQ
	doADKLcnXl+SjbiWu73kXZUklnUc3ZYPxpnbODjAfOI9gxBYwuyEXpqyRXzQEmrgL5j9TM2xIGvNG
	dD5UNb49MV5glBOOVFPL2adoTdbdwiwzsRzqHT00iV8vaQ0a2slM0KZTVzwM9DMJnXbPAwBviSqjR
	G5Uocik2BjqO8gjWeqwfmgwxLTKa06n90GvfxCVUP+Ar3SH6KeodGz50RAKW+3jSvT15p9FJOmd/h
	BL+BBjonpr3UjgTU9eXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT28z-0004sH-Ln; Mon, 27 Apr 2020 11:41:49 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT28k-0004p9-Tz
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 11:41:37 +0000
Received: by mail-io1-xd44.google.com with SMTP id k6so18444909iob.3
 for <linux-mtd@lists.infradead.org>; Mon, 27 Apr 2020 04:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=F+HbPvxQnRBlqBFKy/zn6110uxUPAWY6eSsMY6+ckPY=;
 b=uI1U3pP4FazEZaTfkDGgaf1Qyb1hL6AlgZB9tozzlJtw0tc2p0xAeW9BNdbY4A2XuL
 JYn8lE6gg3HqjBgRaTT8CTSOLDZ9E79yDyBM0EGnWldSdHyzrk+BT/7frJGn/PAhMIrE
 VCZdq7yfljhgiOOYhIeLP2AIIFXvLFMREe3IREMgf/Wimn5okrCaqK4gkS0+n2Tqfq3c
 EFYh4cYLyK3nIET0YOm2adzDe5W5QN3hsgSvwW72euh+PRPDs3oxC82+7cfg/ZGTOz8/
 eTagf6SblJMWIJeJ59y/zg3//EVOq9RPByBfKkQCDUJB6vE62XJLcx9qUgZNIxoYrz8S
 JAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=F+HbPvxQnRBlqBFKy/zn6110uxUPAWY6eSsMY6+ckPY=;
 b=NZaTieskRT7TDNBKo3bOt7eBDHRK81iBhASTm3DvNA6tW6tFmxv9vpBRjoIj+cn6lW
 CKWbNzcL/nLmM2wfBV1M8S6Obe/eq8DD8pyRbOF8C3xCs/PF580WKbibvhUj81UIlID1
 r4rjsl2Mfnv12gpAf3Xu2r/y51uvO8NDI/x5IAtaV8cQnkf+xPBKOv8xmBpU7alnm4hZ
 R+IIezNreHThFC2msf8RzqjWD5SOEtIqrZFb3V1yyvWhTRhGqgmszhkJpCeXlTje2mvg
 DXSc6j7TmD6eAUK2U1TclWfHJIUFSM4kjWo/17CUq4Zwb5WOB3OW4xEkALON159DaOQS
 Xwjw==
X-Gm-Message-State: AGi0PuanrKq+DRItEEeeNjxSDg3ejcI2AD91paPBVTCNshpeWIcJderJ
 x40Fi4YztEVmJogRSVhvKv53TwDU18bcr1zjo9w=
X-Google-Smtp-Source: APiQypJWdjzUZMbeRoAX94bUJV0IgwyoF5kUG7iPo3CBzKxW8lStFNsM/6tz3An/TyzRuH2Qw14DtavsVumw6JVLls0=
X-Received: by 2002:a6b:7d4a:: with SMTP id d10mr4072296ioq.70.1587987694042; 
 Mon, 27 Apr 2020 04:41:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:8f89:0:0:0:0:0 with HTTP; Mon, 27 Apr 2020 04:41:33
 -0700 (PDT)
From: Ruben CONVY <andrewboccc@gmail.com>
Date: Mon, 27 Apr 2020 12:41:33 +0100
Message-ID: <CAHVC0+Ag87TMCmfNNwWbxXOFxn5166q8GG5wEfPjwtixj9=EXQ@mail.gmail.com>
Subject: Why continued silence 2
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_044135_004444_C4EC03E9 
X-CRM114-Status: UNSURE (   0.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [convy0090[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrewboccc[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: convy0090@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Did you receive my previous email regarding your family inheritance?
Reply strictly through: convy0090@gmail.com
Best Regards,
Ruben CONVY

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
