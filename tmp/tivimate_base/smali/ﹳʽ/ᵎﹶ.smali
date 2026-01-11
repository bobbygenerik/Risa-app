.class public final Lﹳʽ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lᴵﹳ/ᴵˑ;

.field public final ⁱˊ:Ljava/lang/Class;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lᴵﹳ/ᴵˑ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lﹳʽ/ᵎﹶ;->ⁱˊ:Ljava/lang/Class;

    iput-object p3, p0, Lﹳʽ/ᵎﹶ;->ʽ:Lᴵﹳ/ᴵˑ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    const/4 v1, 0x0

    iget-object v2, p0, Lﹳʽ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p0, Lﹳʽ/ᵎﹶ;->ʽ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, p1, v3, v0, v1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    sget-object v0, Lﹳʽ/ﹳᐧ;->ⁱˊ:Lﹳʽ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lﹳʽ/ﹳᐧ;->ﹳٴ(Lﹳʽ/ᴵᵔ;)Lﹳˋ/ʽʽ;

    move-result-object p1

    sget-object v0, Lﹳʽ/ᵔﹳ;->ⁱˊ:Lﹳʽ/ᵔﹳ;

    iget-object v0, v0, Lﹳʽ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ʽʽ;

    iget-object v1, p0, Lﹳʽ/ᵎﹶ;->ⁱˊ:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lﹳʽ/ʽʽ;->ﹳٴ(Lﹳˋ/ʽʽ;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
