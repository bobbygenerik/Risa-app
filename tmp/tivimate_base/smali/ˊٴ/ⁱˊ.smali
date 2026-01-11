.class public abstract Lˊٴ/ⁱˊ;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final ʾˋ:Lˊٴ/ˆʾ;

.field public final ᴵˊ:Lˊⁱ/ˈ;


# direct methods
.method public constructor <init>(Lˊٴ/ˆʾ;Lـʽ/ﾞʻ;[CZ)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lˊٴ/ⁱˊ;->ʾˋ:Lˊٴ/ˆʾ;

    invoke-virtual {p0, p2, p3, p4}, Lˊٴ/ⁱˊ;->ᵎﹶ(Lـʽ/ﾞʻ;[CZ)Lˊⁱ/ˈ;

    move-result-object p1

    iput-object p1, p0, Lˊٴ/ⁱˊ;->ᴵˊ:Lˊⁱ/ˈ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lˊٴ/ⁱˊ;->ʾˋ:Lˊٴ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lˊٴ/ⁱˊ;->ʾˋ:Lˊٴ/ˆʾ;

    invoke-virtual {v0, p1}, Lˊٴ/ˆʾ;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, Lˊٴ/ⁱˊ;->ʾˋ:Lˊٴ/ˆʾ;

    invoke-virtual {v0, p1}, Lˊٴ/ˆʾ;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lˊٴ/ⁱˊ;->ᴵˊ:Lˊⁱ/ˈ;

    invoke-interface {v0, p1, p2, p3}, Lˊⁱ/ˈ;->ˉʿ([BII)I

    iget-object v0, p0, Lˊٴ/ⁱˊ;->ʾˋ:Lˊٴ/ˆʾ;

    invoke-virtual {v0, p1, p2, p3}, Lˊٴ/ˆʾ;->write([BII)V

    return-void
.end method

.method public ʽ()V
    .locals 2

    iget-object v0, p0, Lˊٴ/ⁱˊ;->ʾˋ:Lˊٴ/ˆʾ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lˊٴ/ˆʾ;->ʽʽ:Z

    return-void
.end method

.method public abstract ᵎﹶ(Lـʽ/ﾞʻ;[CZ)Lˊⁱ/ˈ;
.end method
