.class public final Lʽﹳ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lʽﹳ/ʽ;


# instance fields
.field public ʽ:Lʽﹳ/ʽ;

.field public final ⁱˊ:Ljava/util/concurrent/Executor;

.field public final ﹳٴ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʽﹳ/ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lʽﹳ/ʽ;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lʽﹳ/ʽ;->ˈ:Lʽﹳ/ʽ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽﹳ/ʽ;->ﹳٴ:Ljava/lang/Runnable;

    iput-object p2, p0, Lʽﹳ/ʽ;->ⁱˊ:Ljava/util/concurrent/Executor;

    return-void
.end method
