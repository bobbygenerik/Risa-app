.class public final Lᴵᵔ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Ljava/lang/ThreadLocal;


# instance fields
.field public ʽ:Z

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Lᴵᵔ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lᴵᵔ/ʽ;->ˈ:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᴵᵔ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᴵᵔ/ʽ;->ʽ:Z

    new-instance v0, Lᴵᵔ/ⁱˊ;

    invoke-direct {v0, p0}, Lᴵᵔ/ⁱˊ;-><init>(Lᴵᵔ/ʽ;)V

    iput-object v0, p0, Lᴵᵔ/ʽ;->ﹳٴ:Lᴵᵔ/ⁱˊ;

    return-void
.end method

.method public static ﹳٴ()Lᴵᵔ/ʽ;
    .locals 2

    .prologue
    sget-object v0, Lᴵᵔ/ʽ;->ˈ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lᴵᵔ/ʽ;

    invoke-direct {v1}, Lᴵᵔ/ʽ;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ʽ;

    return-object v0
.end method
