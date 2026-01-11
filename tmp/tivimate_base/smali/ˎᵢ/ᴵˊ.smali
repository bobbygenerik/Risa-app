.class public final Lˎᵢ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lˎᵢ/ʽʽ;

.field public ʽ:I

.field public ˆʾ:Lˎᵢ/ʽʽ;

.field public ˈ:Ljava/lang/String;

.field public ˉʿ:Lcom/bumptech/glide/ʼˎ;

.field public ˑﹳ:Lˎᵢ/ᵔʾ;

.field public ٴﹶ:J

.field public ᵎﹶ:Lˎᵢ/ᴵᵔ;

.field public ᵔʾ:Lˎᵢ/ˉٴ;

.field public ᵔᵢ:Lˎᵢ/ʽʽ;

.field public ⁱˊ:Lˎᵢ/ـˆ;

.field public ﹳٴ:Lˎᵢ/ʾᵎ;

.field public ﾞʻ:J

.field public ﾞᴵ:Lʼٴ/ʼˎ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lˎᵢ/ᴵˊ;->ʽ:I

    sget-object v0, Lˎᵢ/ᴵᵔ;->ʾˋ:Lˎᵢ/ˈٴ;

    iput-object v0, p0, Lˎᵢ/ᴵˊ;->ᵎﹶ:Lˎᵢ/ᴵᵔ;

    sget-object v0, Lˎᵢ/ˉٴ;->ᵔﹳ:Lˎᵢ/ⁱˊ;

    iput-object v0, p0, Lˎᵢ/ᴵˊ;->ᵔʾ:Lˎᵢ/ˉٴ;

    new-instance v0, Lʼٴ/ʼˎ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lʼٴ/ʼˎ;-><init>(I)V

    iput-object v0, p0, Lˎᵢ/ᴵˊ;->ﾞᴵ:Lʼٴ/ʼˎ;

    return-void
.end method

.method public static ⁱˊ(Ljava/lang/String;Lˎᵢ/ʽʽ;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_3

    iget-object v0, p1, Lˎᵢ/ʽʽ;->ˉٴ:Lˎᵢ/ʽʽ;

    if-nez v0, :cond_2

    iget-object v0, p1, Lˎᵢ/ʽʽ;->ᵎⁱ:Lˎᵢ/ʽʽ;

    if-nez v0, :cond_1

    iget-object p1, p1, Lˎᵢ/ʽʽ;->ٴʼ:Lˎᵢ/ʽʽ;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ".priorResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, ".cacheResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, ".networkResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final ﹳٴ()Lˎᵢ/ʽʽ;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget v5, v0, Lˎᵢ/ᴵˊ;->ʽ:I

    if-ltz v5, :cond_3

    iget-object v2, v0, Lˎᵢ/ᴵˊ;->ﹳٴ:Lˎᵢ/ʾᵎ;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lˎᵢ/ᴵˊ;->ⁱˊ:Lˎᵢ/ـˆ;

    if-eqz v3, :cond_1

    iget-object v4, v0, Lˎᵢ/ᴵˊ;->ˈ:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v6, v0, Lˎᵢ/ᴵˊ;->ˑﹳ:Lˎᵢ/ᵔʾ;

    iget-object v1, v0, Lˎᵢ/ᴵˊ;->ﾞᴵ:Lʼٴ/ʼˎ;

    invoke-virtual {v1}, Lʼٴ/ʼˎ;->ᵎﹶ()Lˎᵢ/ˉˆ;

    move-result-object v7

    iget-object v8, v0, Lˎᵢ/ᴵˊ;->ᵎﹶ:Lˎᵢ/ᴵᵔ;

    iget-object v9, v0, Lˎᵢ/ᴵˊ;->ᵔᵢ:Lˎᵢ/ʽʽ;

    iget-object v10, v0, Lˎᵢ/ᴵˊ;->ʼˎ:Lˎᵢ/ʽʽ;

    iget-object v11, v0, Lˎᵢ/ᴵˊ;->ˆʾ:Lˎᵢ/ʽʽ;

    iget-wide v12, v0, Lˎᵢ/ᴵˊ;->ٴﹶ:J

    iget-wide v14, v0, Lˎᵢ/ᴵˊ;->ﾞʻ:J

    iget-object v1, v0, Lˎᵢ/ᴵˊ;->ˉʿ:Lcom/bumptech/glide/ʼˎ;

    move-object/from16 v16, v1

    iget-object v1, v0, Lˎᵢ/ᴵˊ;->ᵔʾ:Lˎᵢ/ˉٴ;

    move-object/from16 v17, v1

    new-instance v1, Lˎᵢ/ʽʽ;

    invoke-direct/range {v1 .. v17}, Lˎᵢ/ʽʽ;-><init>(Lˎᵢ/ʾᵎ;Lˎᵢ/ـˆ;Ljava/lang/String;ILˎᵢ/ᵔʾ;Lˎᵢ/ˉˆ;Lˎᵢ/ᴵᵔ;Lˎᵢ/ʽʽ;Lˎᵢ/ʽʽ;Lˎᵢ/ʽʽ;JJLcom/bumptech/glide/ʼˎ;Lˎᵢ/ˉٴ;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lˎᵢ/ᴵˊ;->ʽ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
