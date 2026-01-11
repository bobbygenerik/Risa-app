.class public final Lˋﹳ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋﹳ/ⁱˊ;


# static fields
.field public static final ﾞᴵ:Ljava/util/logging/Logger;


# instance fields
.field public final ʽ:Lﹳˑ/ˈ;

.field public final ˈ:Lᵔـ/ˈ;

.field public final ˑﹳ:Lʻˎ/ⁱˊ;

.field public final ⁱˊ:Ljava/util/concurrent/Executor;

.field public final ﹳٴ:Lcom/parse/ٴʼ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lˉˋ/ʼᐧ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lˋﹳ/ﹳٴ;->ﾞᴵ:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lﹳˑ/ˈ;Lcom/parse/ٴʼ;Lᵔـ/ˈ;Lʻˎ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋﹳ/ﹳٴ;->ⁱˊ:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lˋﹳ/ﹳٴ;->ʽ:Lﹳˑ/ˈ;

    iput-object p3, p0, Lˋﹳ/ﹳٴ;->ﹳٴ:Lcom/parse/ٴʼ;

    iput-object p4, p0, Lˋﹳ/ﹳٴ;->ˈ:Lᵔـ/ˈ;

    iput-object p5, p0, Lˋﹳ/ﹳٴ;->ˑﹳ:Lʻˎ/ⁱˊ;

    return-void
.end method
