.class public final Lᐧˎ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lᐧˎ/ˏי;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᐧˎ/ˏי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᐧˎ/ˏי;->ﹳٴ:Lᐧˎ/ˏי;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lᐧˎ/ʻٴ;
    .locals 2

    new-instance v0, Lᐧˎ/ʻٴ;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Lᐧˎ/ʻٴ;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
