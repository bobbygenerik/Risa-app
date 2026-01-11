.class public Lʼʻ/ٴʼ;
.super Lʼʻ/ʼᐧ;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient ˈٴ:Lʼʻ/ᴵʼ;


# direct methods
.method public constructor <init>(Lʼʻ/ᴵʼ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼʻ/ٴʼ;->ˈٴ:Lʼʻ/ᴵʼ;

    return-void
.end method


# virtual methods
.method public ʽ()Lʼʻ/ᵔי;
    .locals 1

    iget-object v0, p0, Lʼʻ/ٴʼ;->ˈٴ:Lʼʻ/ᴵʼ;

    return-object v0
.end method

.method public final ˈ(Ljava/lang/String;)Lʼʻ/ᵎⁱ;
    .locals 1

    .prologue
    iget-object v0, p0, Lʼʻ/ٴʼ;->ˈٴ:Lʼʻ/ᴵʼ;

    invoke-virtual {v0, p1}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʼʻ/ᵎⁱ;

    if-nez p1, :cond_0

    sget-object p1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object p1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    :cond_0
    return-object p1
.end method

.method public final ⁱˊ(Ljava/lang/Object;)Z
    .locals 0

    .prologue
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lʼʻ/ˉˆ;->ⁱˊ(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic ﹳٴ()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ٴʼ;->ʽ()Lʼʻ/ᵔי;

    move-result-object v0

    return-object v0
.end method
