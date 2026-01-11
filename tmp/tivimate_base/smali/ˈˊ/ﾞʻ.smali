.class public final Lˈˊ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lˈˊ/ﾞʻ;


# instance fields
.field public volatile ⁱˊ:Lˈˊ/ﾞʻ;

.field public volatile ﹳٴ:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˊ/ﾞʻ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˊ/ﾞʻ;->ʽ:Lˈˊ/ﾞʻ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lˈˊ/ˉʿ;->ˊʻ:Lﹳٴ/ﹳٴ;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lﹳٴ/ﹳٴ;->ˉٴ(Lˈˊ/ﾞʻ;Ljava/lang/Thread;)V

    return-void
.end method
