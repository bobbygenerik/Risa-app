.class public final Lٴᵎ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴᵎ/ـˆ;


# instance fields
.field public final ﹳٴ:Lٴᵎ/ᵔﹳ;


# direct methods
.method public constructor <init>(Lٴᵎ/ᵔﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᵎ/ʽﹳ;->ﹳٴ:Lٴᵎ/ᵔﹳ;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected cancel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʽ()Lٴᵎ/ʻٴ;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˈ()Lٴᵎ/ᵔﹳ;
    .locals 1

    iget-object v0, p0, Lٴᵎ/ʽﹳ;->ﹳٴ:Lٴᵎ/ᵔﹳ;

    return-object v0
.end method

.method public final ᵎﹶ()Lٴᵎ/ʻٴ;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ⁱˊ()Lٴᵎ/ـˆ;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected retry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳٴ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
