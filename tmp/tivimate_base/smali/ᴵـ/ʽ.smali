.class public abstract Lᴵـ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lˑˏ/ﹳٴ;->ﹳٴ:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lʿʾ/ʽʽ;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lʿʾ/ʽʽ;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method
