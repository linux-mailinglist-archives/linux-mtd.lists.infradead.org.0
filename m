Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB45915415A
	for <lists+linux-mtd@lfdr.de>; Thu,  6 Feb 2020 10:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cXLZ51/UF42qRiK1TTc5/hu9e/Y2pm2PIDyxpyW6obU=; b=SynR7t14Y1obF4
	N4qhJwN6DZCQJGG9wtNYEy+ks8Pl13kbvbuxHinvjm3SqiUAHCfLeC1XYR8g1GV2FqIGjl33kUiej
	L3xlfwSYZ7N3+iAAUUkuyUIXGd7koGth369LAPMWoMm/lFymbg6fGU83V/XzLz4Gn/XGNuJ05u5wy
	8RChySb1W+xoz/SQ6sX/66ZlEBx+Pvn95E0egk9Yv2/ragmPYUEP5fdp7K3UG9LU8MZeYkXbQ2DUK
	TMWGCaz6mKVv+g/aJGakPO0YxcmsK0/9Nkawud/vEsnmZwUV/Pa3EE05RmUoBPWkMByIpE5sY55Lt
	bfdQgL/G/aSiUtkVNMkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izdjL-0007LR-GP; Thu, 06 Feb 2020 09:45:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izdjD-0007Kr-Ni
 for linux-mtd@lists.infradead.org; Thu, 06 Feb 2020 09:45:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id a6so6250688wrx.12
 for <linux-mtd@lists.infradead.org>; Thu, 06 Feb 2020 01:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=aUPQAppzVYZP5rXoK1lL7MCmcouUmNEmNPrEmTOZTz0=;
 b=hpAXymSGOUTAsW54T+ArxUPPYbfe4fPc7TiuEA0PtZSNbjWsIyToZ41p78R4Sq2SUm
 Oa18SE4rLHjK09gIKpmBWyx8YEkatKF0kHS52TfU7HAG3oWBev7RbihyjPmNGAwfdKip
 R8rR97XJOZ6VDLONvYl3fCcpNIHX1Wj7qeDoh7OVm3V6R/xDc8FWm+2oK9NWzCfpW1id
 QSaLhkTZu1nbFfcq4ymhv9f8IJe23lkcZqkmKCZCD2i2aE7qKIzxcUQMowVeZTlNmL12
 mhNOzpD7BB9w3upJKaxghpU1ezWfQqcBZjNR1bQT+ZycctOHPto6DLHEzkqdo4KN2eEd
 3odw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=aUPQAppzVYZP5rXoK1lL7MCmcouUmNEmNPrEmTOZTz0=;
 b=RIpVQM5R4zfEhk083qOGKF6Q9PfsbcoRPIjUGTi4gKUtIhrVkSRB8SyaU+DNBzx4cw
 4lAB6xIRvpGEi69aOL3OaHg9XrXkVwdN0ES4BIJJCzYITV6fozdvUegsj5j7aWvQE9Gl
 CNHiJDENxDktB0Ug2e54EAYorOUBLPhDoA0rMsTW+L/fKA0BBTgfCaO+7/8rB6PqpLm6
 GA+EL5Iuisz3UBrbXZbRRDdt1wECDhzYLIX/D71XSFgntqCfU/UEm+Vc24Y1yANq0ZpV
 I9MwSa5XobWyYUiKKs0QyxVYyCXmgFrusOoxoG9RqXFImUNHogVG7M/bNz4zmnYukloV
 xj5w==
X-Gm-Message-State: APjAAAXYnolCtiRZz9UxvNAp4W7XSrtnqgelucjaovH/cH+P7YtSihue
 oIVEiGWxyz9gTGMUYgLoH387Sq/wi5DoWZ+ZEaY=
X-Google-Smtp-Source: APXvYqyhezVrmsnc1GOl4NoaOHFU12IdvyM97XRQTC1rbHW+v/sQeeSSkXxjiNt/afnX7JQ8aj25lNpDm0DkVb6XTZA=
X-Received: by 2002:a05:6000:4:: with SMTP id h4mr3016008wrx.403.1580982340884; 
 Thu, 06 Feb 2020 01:45:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:b352:0:0:0:0:0 with HTTP;
 Thu, 6 Feb 2020 01:45:40 -0800 (PST)
From: yusuf osman <yusufosman1042@gmail.com>
Date: Thu, 6 Feb 2020 12:45:40 +0300
X-Google-Sender-Auth: 8_4Pszz5I-i8aJFAXPlaTWV5VMU
Message-ID: <CAOfoaGgSBZ+XrYh85SG=Octf0DDO7tRr1k9hZzkHotJg0-gw3g@mail.gmail.com>
Subject: Urgent reply
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_014543_772773_05C19A87 
X-CRM114-Status: UNSURE (  -1.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [123myclark[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [yusufosman0142[at]gmail.com]
 0.9 URG_BIZ                BODY: Contains urgent matter
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: yusufosman0142@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Good Day,

Please it's very important we speak and discuss my proposal,
the letter I sent to you before on this deposit here.
Regards
Yusuf

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
