.class public final Lˊﹳ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public final ʽ:Lˊﾞ/ʽʽ;

.field public final ⁱˊ:Lᐧˎ/ﹳᐧ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    iput p1, p0, Lˊﹳ/ﹳٴ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lˊﹳ/ﹳٴ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Lˊﾞ/ʽʽ;

    const/4 v0, -0x1

    const-string v1, "image/avif"

    invoke-direct {p1, v0, v0, v1}, Lˊﾞ/ʽʽ;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lˊﹳ/ﹳٴ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Lˊﾞ/ʽʽ;

    const/4 v0, -0x1

    const-string v1, "image/webp"

    invoke-direct {p1, v0, v0, v1}, Lˊﾞ/ʽʽ;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lˊﹳ/ﹳٴ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Lˊﾞ/ʽʽ;

    const/4 v0, -0x1

    const-string v1, "image/heif"

    invoke-direct {p1, v0, v0, v1}, Lˊﾞ/ʽʽ;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final ʽ()V
    .locals 0

    return-void
.end method

.method private final ˑﹳ()V
    .locals 0

    return-void
.end method

.method private final ᵔᵢ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 1

    .prologue
    iget v0, p0, Lˊﹳ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1}, Lˊﾞ/ʽʽ;->ʼˎ(Lˊﾞ/ᵔﹳ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1}, Lˊﾞ/ʽʽ;->ʼˎ(Lˊﾞ/ᵔﹳ;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1}, Lˊﾞ/ʽʽ;->ʼˎ(Lˊﾞ/ᵔﹳ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 1

    iget v0, p0, Lˊﹳ/ﹳٴ;->ﹳٴ:I

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 1

    .prologue
    iget v0, p0, Lˊﹳ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1, p2}, Lˊﾞ/ʽʽ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1, p2}, Lˊﾞ/ʽʽ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1, p2}, Lˊﾞ/ʽʽ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    .prologue
    iget v0, p0, Lˊﹳ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(JJ)V
    .locals 1

    .prologue
    iget v0, p0, Lˊﹳ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lˊﾞ/ʽʽ;->ⁱˊ(JJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lˊﾞ/ʽʽ;->ⁱˊ(JJ)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lˊﹳ/ﹳٴ;->ʽ:Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lˊﾞ/ʽʽ;->ⁱˊ(JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()V
    .locals 1

    iget v0, p0, Lˊﹳ/ﹳٴ;->ﹳٴ:I

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 8

    .prologue
    iget v0, p0, Lˊﹳ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˊﹳ/ﹳٴ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    check-cast p1, Lˊﾞ/ﾞʻ;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v3}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v4

    const-wide/32 v6, 0x52494646

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v3}, Lˊﾞ/ﾞʻ;->ﹳٴ(IZ)Z

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v2, v3, v1, v3}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v0

    const-wide/32 v4, 0x57454250

    cmp-long p1, v0, v4

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :pswitch_0
    check-cast p1, Lˊﾞ/ﾞʻ;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lˊﾞ/ﾞʻ;->ﹳٴ(IZ)Z

    iget-object v2, p0, Lˊﹳ/ﹳٴ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v2, v0}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v3, v1, v0, v1}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v3

    const v5, 0x66747970

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {v2, v0}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v3, v1, v0, v1}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v2

    const p1, 0x68656963

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :pswitch_1
    check-cast p1, Lˊﾞ/ﾞʻ;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lˊﾞ/ﾞʻ;->ﹳٴ(IZ)Z

    iget-object v2, p0, Lˊﹳ/ﹳٴ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v2, v0}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v3, v1, v0, v1}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v3

    const v5, 0x66747970

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    invoke-virtual {v2, v0}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v3, v1, v0, v1}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v2

    const p1, 0x61766966

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
