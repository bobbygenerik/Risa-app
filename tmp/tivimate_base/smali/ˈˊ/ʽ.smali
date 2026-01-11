.class public final Lˈˊ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lˈˊ/ʽ;


# instance fields
.field public ʽ:Lˈˊ/ʽ;

.field public final ⁱˊ:Ljava/util/concurrent/Executor;

.field public final ﹳٴ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˊ/ʽ;

    invoke-direct {v0}, Lˈˊ/ʽ;-><init>()V

    sput-object v0, Lˈˊ/ʽ;->ˈ:Lˈˊ/ʽ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lˈˊ/ʽ;->ﹳٴ:Ljava/lang/Runnable;

    iput-object v0, p0, Lˈˊ/ʽ;->ⁱˊ:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˊ/ʽ;->ﹳٴ:Ljava/lang/Runnable;

    iput-object p2, p0, Lˈˊ/ʽ;->ⁱˊ:Ljava/util/concurrent/Executor;

    return-void
.end method
