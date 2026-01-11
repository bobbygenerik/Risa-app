.class public final Lˑי/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾞᴵ:Lʻٴ/ˑﹳ;


# instance fields
.field public final ʽ:Lʽⁱ/ᵎﹶ;

.field public final ˈ:Lˑי/ʽ;

.field public final ˑﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ⁱˊ:Lˉᵔ/ʽ;

.field public final ﹳٴ:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʻٴ/ˑﹳ;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lʻٴ/ˑﹳ;-><init>(I)V

    sput-object v0, Lˑי/ⁱˊ;->ﾞᴵ:Lʻٴ/ˑﹳ;

    return-void
.end method

.method public constructor <init>(Lˑי/ʽ;Lˆˏ/ﾞᴵ;Lˉᵔ/ʽ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lˑי/ⁱˊ;->ﹳٴ:Ljava/util/UUID;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lˑי/ⁱˊ;->ˑﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lˑי/ⁱˊ;->ˈ:Lˑי/ʽ;

    check-cast p2, Lʽⁱ/ᵎﹶ;

    iput-object p2, p0, Lˑי/ⁱˊ;->ʽ:Lʽⁱ/ᵎﹶ;

    iput-object p3, p0, Lˑי/ⁱˊ;->ⁱˊ:Lˉᵔ/ʽ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/AutoCloseable;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˑי/ⁱˊ;->ⁱˊ:Lˉᵔ/ʽ;

    invoke-virtual {v0, p1}, Lˉᵔ/ʽ;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Runnable;

    iget-object v1, p0, Lˑי/ⁱˊ;->ˑﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    aget-object v2, v0, p1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
