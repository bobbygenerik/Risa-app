.class public final Lˈﹳ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile ﹳٴ:Z


# virtual methods
.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˈﹳ/ˑﹳ;->ﹳٴ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
