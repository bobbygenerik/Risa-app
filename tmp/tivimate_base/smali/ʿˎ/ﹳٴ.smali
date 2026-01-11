.class public final Lʿˎ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽᐧ/ﾞʻ;


# instance fields
.field public final ʾˋ:Lᐧˎ/ﹳᐧ;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lᐧˎ/ﹳᐧ;

    invoke-direct {p1}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p1, p0, Lʿˎ/ﹳٴ;->ʾˋ:Lᐧˎ/ﹳᐧ;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lʿˎ/ﹳٴ;->ʾˋ:Lᐧˎ/ﹳᐧ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public synthetic reset()V
    .locals 0

    return-void
.end method

.method public ᵎﹶ()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public synthetic ⁱˊ([BII)Lʽᐧ/ˈ;
    .locals 0

    invoke-static {p0, p1, p3}, Lʼﾞ/ˊˋ;->ﹳٴ(Lʽᐧ/ﾞʻ;[BI)Lʽᐧ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method

.method public ﹳٴ([BIILʽᐧ/ٴﹶ;Lᐧˎ/ﾞᴵ;)V
    .locals 16

    .prologue
    move/from16 v0, p2

    add-int v1, v0, p3

    move-object/from16 v2, p0

    iget-object v3, v2, Lʿˎ/ﹳٴ;->ʾˋ:Lᐧˎ/ﹳᐧ;

    move-object/from16 v4, p1

    invoke-virtual {v3, v1, v4}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-virtual {v3, v0}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-lt v0, v5, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    const-string v6, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-static {v6, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v0

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v6

    const v7, 0x76747463

    if-ne v6, v7, :cond_7

    add-int/lit8 v0, v0, -0x8

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    :cond_1
    :goto_2
    if-lez v0, :cond_4

    if-lt v0, v5, :cond_2

    move v10, v4

    goto :goto_3

    :cond_2
    move v10, v1

    :goto_3
    const-string v11, "Incomplete vtt cue box header found."

    invoke-static {v11, v10}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v10

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v11

    add-int/lit8 v0, v0, -0x8

    sub-int/2addr v10, v5

    iget-object v12, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v13, v3, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    sget-object v14, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v13, v10, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v3, v10}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    sub-int/2addr v0, v10

    const v10, 0x73747467

    if-ne v11, v10, :cond_3

    new-instance v8, Lʿˎ/ᵔᵢ;

    invoke-direct {v8}, Lʿˎ/ᵔᵢ;-><init>()V

    invoke-static {v14, v8}, Lʿˎ/ʼˎ;->ˑﹳ(Ljava/lang/String;Lʿˎ/ᵔᵢ;)V

    invoke-virtual {v8}, Lʿˎ/ᵔᵢ;->ﹳٴ()Lⁱˉ/ﹳٴ;

    move-result-object v8

    goto :goto_2

    :cond_3
    const v10, 0x7061796c

    if-ne v11, v10, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v6, v7, v10}, Lʿˎ/ʼˎ;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v7

    goto :goto_2

    :cond_4
    if-nez v7, :cond_5

    const-string v7, ""

    :cond_5
    if-eqz v8, :cond_6

    iput-object v7, v8, Lⁱˉ/ﹳٴ;->ﹳٴ:Ljava/lang/CharSequence;

    iput-object v6, v8, Lⁱˉ/ﹳٴ;->ⁱˊ:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Lⁱˉ/ﹳٴ;->ﹳٴ()Lⁱˉ/ⁱˊ;

    move-result-object v0

    goto :goto_4

    :cond_6
    sget-object v0, Lʿˎ/ʼˎ;->ﹳٴ:Ljava/util/regex/Pattern;

    new-instance v0, Lʿˎ/ᵔᵢ;

    invoke-direct {v0}, Lʿˎ/ᵔᵢ;-><init>()V

    iput-object v7, v0, Lʿˎ/ᵔᵢ;->ʽ:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lʿˎ/ᵔᵢ;->ﹳٴ()Lⁱˉ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Lⁱˉ/ﹳٴ;->ﹳٴ()Lⁱˉ/ⁱˊ;

    move-result-object v0

    :goto_4
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v3, v0}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    goto/16 :goto_0

    :cond_8
    new-instance v4, Lʽᐧ/ﹳٴ;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v4 .. v9}, Lʽᐧ/ﹳٴ;-><init>(JJLjava/util/List;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lᐧˎ/ﾞᴵ;->accept(Ljava/lang/Object;)V

    return-void
.end method
