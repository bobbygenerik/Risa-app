.class public final Lٴᵎ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴᵎ/ـˆ;


# instance fields
.field public final ﹳٴ:Lٴᵎ/ʻٴ;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lٴᵎ/ʻٴ;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lٴᵎ/ʻٴ;-><init>(Lٴᵎ/ـˆ;Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lٴᵎ/ˆʾ;->ﹳٴ:Lٴᵎ/ʻٴ;

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
    .locals 1

    iget-object v0, p0, Lٴᵎ/ˆʾ;->ﹳٴ:Lٴᵎ/ʻٴ;

    return-object v0
.end method

.method public final ˈ()Lٴᵎ/ᵔﹳ;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵎﹶ()Lٴᵎ/ʻٴ;
    .locals 1

    iget-object v0, p0, Lٴᵎ/ˆʾ;->ﹳٴ:Lٴᵎ/ʻٴ;

    return-object v0
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

    const/4 v0, 0x0

    return v0
.end method
