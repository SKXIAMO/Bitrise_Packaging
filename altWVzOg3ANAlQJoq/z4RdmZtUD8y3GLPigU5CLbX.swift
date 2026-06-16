import Foundation

struct z4RdmZtUD8y3GLPigU5CLbX: Codable, Equatable {
    let zg4iUlaaETunnsIrsR9vOBD: Int
    let c6BC2bXF078ub5fzPl3PfPcPRICmM7R: Int
    let xnawZMBPAAFW: Int
    let rnWk9AF43kH1OKj: String
    let usYhdyYGGb9lD5ryz7jUlvdB: String
    let v31uwJv8ff: String
    let jwAgLej0B: Int
    let p8Nc4mQ7sL2dV: Date
    let a6Qk1vR9mD3sT: Int? 

    init(
        zg4iUlaaETunnsIrsR9vOBD: Int,
        c6BC2bXF078ub5fzPl3PfPcPRICmM7R: Int,
        xnawZMBPAAFW: Int,
        rnWk9AF43kH1OKj: String,
        usYhdyYGGb9lD5ryz7jUlvdB: String,
        v31uwJv8ff: String,
        jwAgLej0B: Int,
        p8Nc4mQ7sL2dV: Date = Date(),
        a6Qk1vR9mD3sT: Int? = nil
    ) {
        self.zg4iUlaaETunnsIrsR9vOBD = zg4iUlaaETunnsIrsR9vOBD
        self.c6BC2bXF078ub5fzPl3PfPcPRICmM7R = c6BC2bXF078ub5fzPl3PfPcPRICmM7R
        self.xnawZMBPAAFW = xnawZMBPAAFW
        self.rnWk9AF43kH1OKj = rnWk9AF43kH1OKj
        self.usYhdyYGGb9lD5ryz7jUlvdB = usYhdyYGGb9lD5ryz7jUlvdB
        self.v31uwJv8ff = v31uwJv8ff
        self.jwAgLej0B = jwAgLej0B
        self.p8Nc4mQ7sL2dV = p8Nc4mQ7sL2dV
        self.a6Qk1vR9mD3sT = a6Qk1vR9mD3sT
    }

    private enum CodingKeys: String, CodingKey {
        case zg4iUlaaETunnsIrsR9vOBD
        case c6BC2bXF078ub5fzPl3PfPcPRICmM7R
        case xnawZMBPAAFW
        case rnWk9AF43kH1OKj
        case usYhdyYGGb9lD5ryz7jUlvdB
        case v31uwJv8ff
        case jwAgLej0B
        case p8Nc4mQ7sL2dV
        case a6Qk1vR9mD3sT
    }

    init(from decoder: Decoder) throws {
        let containerValue = try decoder.container(keyedBy: CodingKeys.self)
        zg4iUlaaETunnsIrsR9vOBD = try containerValue.decode(Int.self, forKey: .zg4iUlaaETunnsIrsR9vOBD)
        c6BC2bXF078ub5fzPl3PfPcPRICmM7R = try containerValue.decode(Int.self, forKey: .c6BC2bXF078ub5fzPl3PfPcPRICmM7R)
        xnawZMBPAAFW = try containerValue.decode(Int.self, forKey: .xnawZMBPAAFW)
        rnWk9AF43kH1OKj = try containerValue.decode(String.self, forKey: .rnWk9AF43kH1OKj)
        usYhdyYGGb9lD5ryz7jUlvdB = try containerValue.decode(String.self, forKey: .usYhdyYGGb9lD5ryz7jUlvdB)
        v31uwJv8ff = try containerValue.decode(String.self, forKey: .v31uwJv8ff)
        jwAgLej0B = try containerValue.decode(Int.self, forKey: .jwAgLej0B)
        p8Nc4mQ7sL2dV = try containerValue.decodeIfPresent(Date.self, forKey: .p8Nc4mQ7sL2dV) ?? Date()
        a6Qk1vR9mD3sT = try containerValue.decodeIfPresent(Int.self, forKey: .a6Qk1vR9mD3sT)
    }
}

let meQ83VFvVcfjYQ: [z4RdmZtUD8y3GLPigU5CLbX] = [
    z4RdmZtUD8y3GLPigU5CLbX(
        zg4iUlaaETunnsIrsR9vOBD: 1,
        c6BC2bXF078ub5fzPl3PfPcPRICmM7R: 1,
        xnawZMBPAAFW: 4,
        rnWk9AF43kH1OKj: "hi",
        usYhdyYGGb9lD5ryz7jUlvdB: "",
        v31uwJv8ff: "",
        jwAgLej0B: 0,
        p8Nc4mQ7sL2dV: Date(timeIntervalSince1970: 1781129520)
    )
]
