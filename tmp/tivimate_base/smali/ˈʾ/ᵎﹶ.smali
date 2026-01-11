.class public final Lˈʾ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ﾞᴵ;


# instance fields
.field public ʽ:Lʿˑ/ⁱˊ;

.field public final ˈ:Lˈʾ/ˑﹳ;

.field public ⁱˊ:Z

.field public ﹳٴ:Z


# direct methods
.method public constructor <init>(Lˈʾ/ˑﹳ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˈʾ/ᵎﹶ;->ﹳٴ:Z

    iput-boolean v0, p0, Lˈʾ/ᵎﹶ;->ⁱˊ:Z

    iput-object p1, p0, Lˈʾ/ᵎﹶ;->ˈ:Lˈʾ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final ˈ(Ljava/lang/String;)Lʿˑ/ﾞᴵ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˈʾ/ᵎﹶ;->ﹳٴ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˈʾ/ᵎﹶ;->ﹳٴ:Z

    iget-object v0, p0, Lˈʾ/ᵎﹶ;->ʽ:Lʿˑ/ⁱˊ;

    iget-boolean v1, p0, Lˈʾ/ᵎﹶ;->ⁱˊ:Z

    iget-object v2, p0, Lˈʾ/ᵎﹶ;->ˈ:Lˈʾ/ˑﹳ;

    invoke-virtual {v2, v0, p1, v1}, Lˈʾ/ˑﹳ;->ᵔᵢ(Lʿˑ/ⁱˊ;Ljava/lang/Object;Z)V

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˑﹳ(Z)Lʿˑ/ﾞᴵ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˈʾ/ᵎﹶ;->ﹳٴ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˈʾ/ᵎﹶ;->ﹳٴ:Z

    iget-object v0, p0, Lˈʾ/ᵎﹶ;->ʽ:Lʿˑ/ⁱˊ;

    iget-boolean v1, p0, Lˈʾ/ᵎﹶ;->ⁱˊ:Z

    iget-object v2, p0, Lˈʾ/ᵎﹶ;->ˈ:Lˈʾ/ˑﹳ;

    invoke-virtual {v2, v0, p1, v1}, Lˈʾ/ˑﹳ;->ˑﹳ(Lʿˑ/ⁱˊ;IZ)V

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
