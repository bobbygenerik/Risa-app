.class public final Lיʾ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᐧ/ʾˋ;


# instance fields
.field public final synthetic ʽʽ:Lיʾ/ᵎﹶ;

.field public final ʾˋ:Lˊᐧ/ᵔʾ;

.field public ᴵˊ:Z


# direct methods
.method public constructor <init>(Lיʾ/ᵎﹶ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʾ/ˑﹳ;->ʽʽ:Lיʾ/ᵎﹶ;

    new-instance v0, Lˊᐧ/ᵔʾ;

    iget-object p1, p1, Lיʾ/ᵎﹶ;->ˈ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1}, Lˊᐧ/ʾˋ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object p1

    invoke-direct {v0, p1}, Lˊᐧ/ᵔʾ;-><init>(Lˊᐧ/ˈٴ;)V

    iput-object v0, p0, Lיʾ/ˑﹳ;->ʾˋ:Lˊᐧ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lיʾ/ˑﹳ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lיʾ/ˑﹳ;->ᴵˊ:Z

    iget-object v0, p0, Lיʾ/ˑﹳ;->ʾˋ:Lˊᐧ/ᵔʾ;

    iget-object v1, v0, Lˊᐧ/ᵔʾ;->ˑﹳ:Lˊᐧ/ˈٴ;

    sget-object v2, Lˊᐧ/ˈٴ;->ˈ:Lˊᐧ/ʽʽ;

    iput-object v2, v0, Lˊᐧ/ᵔʾ;->ˑﹳ:Lˊᐧ/ˈٴ;

    invoke-virtual {v1}, Lˊᐧ/ˈٴ;->ﹳٴ()Lˊᐧ/ˈٴ;

    invoke-virtual {v1}, Lˊᐧ/ˈٴ;->ⁱˊ()Lˊᐧ/ˈٴ;

    const/4 v0, 0x3

    iget-object v1, p0, Lיʾ/ˑﹳ;->ʽʽ:Lיʾ/ᵎﹶ;

    iput v0, v1, Lיʾ/ᵎﹶ;->ˑﹳ:I

    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lיʾ/ˑﹳ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lיʾ/ˑﹳ;->ʽʽ:Lיʾ/ᵎﹶ;

    iget-object v0, v0, Lיʾ/ᵎﹶ;->ˈ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v0}, Lˊᐧ/ᵎﹶ;->flush()V

    return-void
.end method

.method public final ˑﹳ()Lˊᐧ/ˈٴ;
    .locals 1

    iget-object v0, p0, Lיʾ/ˑﹳ;->ʾˋ:Lˊᐧ/ᵔʾ;

    return-object v0
.end method

.method public final ᵔי(Lˊᐧ/ﾞᴵ;J)V
    .locals 7

    .prologue
    iget-boolean v0, p0, Lיʾ/ˑﹳ;->ᴵˊ:Z

    if-nez v0, :cond_0

    iget-wide v1, p1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lⁱᐧ/ʽ;->ﹳٴ(JJJ)V

    iget-object p2, p0, Lיʾ/ˑﹳ;->ʽʽ:Lיʾ/ᵎﹶ;

    iget-object p2, p2, Lיʾ/ᵎﹶ;->ˈ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p2, p1, v5, v6}, Lˊᐧ/ʾˋ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
