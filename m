Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B49155FE2
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Feb 2020 21:42:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LRGbWiMFJMIAOYsX6PJmkokWQfLQQkNOGJvElGqlEzY=; b=H12Y3rn8q9qHwM
	aEJSkMeiuXZ68r3yMfdzgzeQXdBmiEXYzRbBfDdMobZwYKCnaQDUnX9XtfXF++NDrC6V69+/P9wiD
	dE9hpa9QtP8BFCZ/iYnY2IckOop/KlPWKtGPHKABJ6exL+g5PQXIWCD2RmwnP+h4X5m+axUNUdiXu
	ISF67O0jAJMjfGvYvVJ61c0jJD0hlwCSdPZzUoyW7hQUbdlmBUqJJxtk0f7NtUV6jO3WpTMgZoT/H
	I2dkGCpDxpe0sn4lFcmEBGlKNlMrP1YMWCSZg6aa8DXXZJgCzqh3mJvQgpkNOgW21kqGjwV1FfzmZ
	WijGzgnNsgxPHVpNjaHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0ASF-0001g1-9I; Fri, 07 Feb 2020 20:42:23 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0AS4-0001eL-F1
 for linux-mtd@lists.infradead.org; Fri, 07 Feb 2020 20:42:14 +0000
Received: by mail-oi1-x244.google.com with SMTP id v19so3260710oic.12
 for <linux-mtd@lists.infradead.org>; Fri, 07 Feb 2020 12:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=8cDRXBFOpE9J1p6S5H+HXSQg9q3m7pUJ3iUuQ5MPcDc=;
 b=YPZJJy834hUJnz7pionGH11ZciL6RrbrPELuvEefyNE4m32c/3BRL7jS6BX3GTRbjW
 A7PT2XuyoA0DKIOAMXBVLqZDks+EHHVySpQpjboWji0NFQ79t34wrEkdhJ/7mvVnPfcg
 BPXVuIvRzTGxR9yBINGUBTO7OS1IgYRxQvNJFyy4DMElAWJNigH6Lfy9a++UWnjsZV7K
 NbU0I3Vhb1neiaj+I96jGm3rPYvdHpbUTw6COrl+fTWEjyjGSvKY6qdov3nXpFudxXNb
 5mDt4W3AkewRXnJYuxGyMUAK1lkfrMP5hrIUalSBsJd0qxRrK90fgDoK4eboWAVqoACA
 vQPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=8cDRXBFOpE9J1p6S5H+HXSQg9q3m7pUJ3iUuQ5MPcDc=;
 b=a4Ftyw7xXoCVbP6WJNWxhzuL49oC/3cWxY9Xw2ru+wHtCbWG/C4FyeSv+x8xzIJSDt
 OgQlVF20N9EGeZbdkal7PZy2+dSjKWeX1GrIPmG5v97aU2Ol3St07B+dQ1SDaGuQis/J
 gTWo0thVqOEHLv2AeDY96QS0wjkjUuSDEFDmIWDg0Bet8rlXE31tMgH2zMyRCBSQAaJZ
 lIP+fs2p9XLExvEZ9VJ/pEy7ZNUVLl4Ay5G/IRlHSoDfzK7tVgbHGQ7vK1BQWYgdisqH
 XurAOLG001nghbu5f7bVLv+fdV+f62GrGh3WQunJ2cmAurokoDQHun3Ui9bFPIQ7y2Pg
 Ni8A==
X-Gm-Message-State: APjAAAUxGQW4dmo/GGKtio96YTW2rrp9qm+iP60Soi9mvYmlfaDgqk1y
 Y1A3FW4/fvOMf7d+TWrJ9g6nvDdNW/TEr43XuLM=
X-Google-Smtp-Source: APXvYqwSeJkRlkGgNiWsW1NpF1DiAIFzsJveh9+wRvoFwY/EgylY09EfD37WjburJ+wD5ZF6dcgpmVqlX+UTGTmHly0=
X-Received: by 2002:aca:c7cb:: with SMTP id x194mr3327726oif.157.1581108131844; 
 Fri, 07 Feb 2020 12:42:11 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:d508:0:0:0:0:0 with HTTP;
 Fri, 7 Feb 2020 12:42:11 -0800 (PST)
From: "Mr. Theophilus Odadudu" <cristinamedina0010@gmail.com>
Date: Fri, 7 Feb 2020 15:42:11 -0500
Message-ID: <CAPNvSTgeN84MC4a+RJ1wBioXqDfarTE4_m4nbA9Dm=S8bmF0WQ@mail.gmail.com>
Subject: LETTER OF INQUIRY
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_124212_497034_F405B6A6 
X-CRM114-Status: UNSURE (  -4.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristinamedina0010[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [cristinamedina0010[at]gmail.com]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [auch197722[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 2.0 HK_SCAM                No description available.
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Reply-To: auch197722@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Good Day,

I work as a clerk in a Bank here in Nigeria, I have a very
confidential Business Proposition for you. There is a said amount of
money floating in the bank unclaimed, belonging to the bank Foreign
customer who die with his family in the Ethiopian Airline crash of
March 11, 2019.

I seek your good collaboration to move the fund for our benefit. we
have agreed that 40% be yours once you help claim.

Do get back to with 1) Your Full Name: (2) Residential Address: (3)
Phone, Mobile  (4) Scan Copy of Your ID. to apply for claims of the
funds.

Regards
Theophilus Odadudu

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
