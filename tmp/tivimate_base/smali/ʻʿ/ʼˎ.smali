.class public final synthetic Lʻʿ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˎ/ˆʾ;
.implements Lᐧˎ/ﾞᴵ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:J

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lʻʿ/ﹳٴ;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʿ/ʼˎ;->ʽʽ:Ljava/lang/Object;

    iput p2, p0, Lʻʿ/ʼˎ;->ᴵˊ:I

    iput-wide p3, p0, Lʻʿ/ʼˎ;->ʾˋ:J

    return-void
.end method

.method public synthetic constructor <init>(Lʽᐧ/ˉʿ;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʿ/ʼˎ;->ʽʽ:Ljava/lang/Object;

    iput-wide p2, p0, Lʻʿ/ʼˎ;->ʾˋ:J

    iput p4, p0, Lʻʿ/ʼˎ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 14

    .prologue
    iget-object v0, p0, Lʻʿ/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʽᐧ/ˉʿ;

    check-cast p1, Lʽᐧ/ﹳٴ;

    iget-object v1, v0, Lʽᐧ/ˉʿ;->ᵔᵢ:Lʽⁱ/ﹳᐧ;

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v1, p1, Lʽᐧ/ﹳٴ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    iget-wide v2, p1, Lʽᐧ/ﹳٴ;->ʽ:J

    invoke-static {v2, v3, v1}, Lﹳˋ/ʼˎ;->ˉٴ(JLʼʻ/ᵎⁱ;)[B

    move-result-object v1

    iget-object v2, v0, Lʽᐧ/ˉʿ;->ʽ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v1

    invoke-virtual {v2, v3, v1}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    iget-object v3, v0, Lʽᐧ/ˉʿ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    array-length v4, v1

    invoke-interface {v3, v4, v2}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-wide v2, p1, Lʽᐧ/ﹳٴ;->ⁱˊ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    iget-wide v4, p0, Lʻʿ/ʼˎ;->ʾˋ:J

    const/4 v6, 0x1

    const-wide v7, 0x7fffffffffffffffL

    if-nez p1, :cond_1

    iget-object p1, v0, Lʽᐧ/ˉʿ;->ᵔᵢ:Lʽⁱ/ﹳᐧ;

    iget-wide v2, p1, Lʽⁱ/ﹳᐧ;->יـ:J

    cmp-long p1, v2, v7

    if-nez p1, :cond_0

    move p1, v6

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    :goto_1
    move-wide v8, v4

    goto :goto_2

    :cond_1
    iget-object p1, v0, Lʽᐧ/ˉʿ;->ᵔᵢ:Lʽⁱ/ﹳᐧ;

    iget-wide v9, p1, Lʽⁱ/ﹳᐧ;->יـ:J

    cmp-long p1, v9, v7

    if-nez p1, :cond_2

    add-long/2addr v4, v2

    goto :goto_1

    :cond_2
    add-long v4, v2, v9

    goto :goto_1

    :goto_2
    iget-object v7, v0, Lʽᐧ/ˉʿ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    iget p1, p0, Lʻʿ/ʼˎ;->ᴵˊ:I

    or-int/lit8 v10, p1, 0x1

    array-length v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    return-void
.end method

.method public ⁱˊ(Ljava/lang/Object;)V
    .locals 10

    .prologue
    iget-object v0, p0, Lʻʿ/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ﹳٴ;

    check-cast p1, Lʻʿ/ⁱˊ;

    check-cast p1, Lʻʿ/ʼᐧ;

    iget-object v1, p1, Lʻʿ/ʼᐧ;->ᵔᵢ:Ljava/util/HashMap;

    iget-object v2, p1, Lʻʿ/ʼᐧ;->ʼˎ:Ljava/util/HashMap;

    iget-object v3, v0, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    if-eqz v3, :cond_2

    iget-object p1, p1, Lʻʿ/ʼᐧ;->ʽ:Lʻʿ/ˉʿ;

    iget-object v0, v0, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {p1, v0, v3}, Lʻʿ/ˉʿ;->ˈ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    if-nez v0, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    iget-wide v8, p0, Lʻʿ/ʼˎ;->ʾˋ:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    iget v0, p0, Lʻʿ/ʼˎ;->ᴵˊ:I

    int-to-long v2, v0

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
