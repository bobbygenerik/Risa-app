.class public final Lˆʿ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʿ/ﹳٴ;


# virtual methods
.method public final ﾞᴵ(Lﹳˎ/ˉˆ;)V
    .locals 2

    .prologue
    const-string p1, "FirebaseCrashlytics"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Could not register handler for breadcrumbs events."

    const/4 v1, 0x0

    nop

    :cond_0
    return-void
.end method
