.class public final Lˋˋ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ᵔᵢ:Lˋˋ/ﾞᴵ;


# instance fields
.field public final ʽ:Lˋˋ/ﾞᴵ;

.field public final ˈ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public ˑﹳ:Ljava/util/List;

.field public ᵎﹶ:I

.field public final ⁱˊ:Lﹳʽ/ˊʻ;

.field public final ﹳٴ:Lˉˆ/ʿ;

.field public ﾞᴵ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋˋ/ﾞᴵ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˋˋ/ﾞᴵ;-><init>(I)V

    sput-object v0, Lˋˋ/ᵎﹶ;->ᵔᵢ:Lˋˋ/ﾞᴵ;

    return-void
.end method

.method public constructor <init>(Lˉˆ/ʿ;Lﹳʽ/ˊʻ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lˋˋ/ᵎﹶ;->ˈ:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lˋˋ/ᵎﹶ;->ﾞᴵ:Ljava/util/List;

    iput-object p1, p0, Lˋˋ/ᵎﹶ;->ﹳٴ:Lˉˆ/ʿ;

    iput-object p2, p0, Lˋˋ/ᵎﹶ;->ⁱˊ:Lﹳʽ/ˊʻ;

    sget-object p1, Lˋˋ/ᵎﹶ;->ᵔᵢ:Lˋˋ/ﾞᴵ;

    iput-object p1, p0, Lˋˋ/ᵎﹶ;->ʽ:Lˋˋ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ᵎﹶ;->ˈ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋˋ/ᵔٴ;

    iget-object v1, v1, Lˋˋ/ᵔٴ;->ﹳٴ:Lˋˋ/ˈʿ;

    goto :goto_0

    :cond_0
    return-void
.end method
