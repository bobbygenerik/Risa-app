.class public abstract Lיʾ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᐧ/ᴵˊ;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Lˎᵢ/ʼᐧ;

.field public final synthetic ˈٴ:Lיʾ/ᵎﹶ;

.field public final ᴵˊ:Lˊᐧ/ᵔʾ;


# direct methods
.method public constructor <init>(Lיʾ/ᵎﹶ;Lˎᵢ/ʼᐧ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʾ/ﹳٴ;->ˈٴ:Lיʾ/ᵎﹶ;

    iput-object p2, p0, Lיʾ/ﹳٴ;->ʾˋ:Lˎᵢ/ʼᐧ;

    new-instance p2, Lˊᐧ/ᵔʾ;

    iget-object p1, p1, Lיʾ/ᵎﹶ;->ʽ:Lˊᐧ/ᵔᵢ;

    invoke-interface {p1}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object p1

    invoke-direct {p2, p1}, Lˊᐧ/ᵔʾ;-><init>(Lˊᐧ/ˈٴ;)V

    iput-object p2, p0, Lיʾ/ﹳٴ;->ᴵˊ:Lˊᐧ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lˎᵢ/ˉˆ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lיʾ/ﹳٴ;->ˈٴ:Lיʾ/ᵎﹶ;

    iget v1, v0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lיʾ/ﹳٴ;->ᴵˊ:Lˊᐧ/ᵔʾ;

    iget-object v3, v1, Lˊᐧ/ᵔʾ;->ˑﹳ:Lˊᐧ/ˈٴ;

    sget-object v4, Lˊᐧ/ˈٴ;->ˈ:Lˊᐧ/ʽʽ;

    iput-object v4, v1, Lˊᐧ/ᵔʾ;->ˑﹳ:Lˊᐧ/ˈٴ;

    invoke-virtual {v3}, Lˊᐧ/ˈٴ;->ﹳٴ()Lˊᐧ/ˈٴ;

    invoke-virtual {v3}, Lˊᐧ/ˈٴ;->ⁱˊ()Lˊᐧ/ˈٴ;

    iput v2, v0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    invoke-virtual {p1}, Lˎᵢ/ˉˆ;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, v0, Lיʾ/ᵎﹶ;->ﹳٴ:Lˎᵢ/ʻٴ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˎᵢ/ʻٴ;->ˆʾ:Lˎᵢ/ﾞʻ;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lיʾ/ﹳٴ;->ʾˋ:Lˎᵢ/ʼᐧ;

    invoke-static {v0, v1, p1}, Lʽי/ﾞᴵ;->ⁱˊ(Lˎᵢ/ﾞʻ;Lˎᵢ/ʼᐧ;Lˎᵢ/ˉˆ;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˑﹳ()Lˊᐧ/ˈٴ;
    .locals 1

    iget-object v0, p0, Lיʾ/ﹳٴ;->ᴵˊ:Lˊᐧ/ᵔʾ;

    return-object v0
.end method

.method public ٴﹶ(Lˊᐧ/ﾞᴵ;J)J
    .locals 2

    .prologue
    iget-object v0, p0, Lיʾ/ﹳٴ;->ˈٴ:Lיʾ/ᵎﹶ;

    :try_start_0
    iget-object v1, v0, Lיʾ/ᵎﹶ;->ʽ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v1, p1, p2, p3}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, v0, Lיʾ/ᵎﹶ;->ⁱˊ:Lʽי/ˈ;

    invoke-interface {p2}, Lʽי/ˈ;->ᵔᵢ()V

    sget-object p2, Lיʾ/ᵎﹶ;->ᵎﹶ:Lˎᵢ/ˉˆ;

    invoke-virtual {p0, p2}, Lיʾ/ﹳٴ;->ʽ(Lˎᵢ/ˉˆ;)V

    throw p1
.end method
